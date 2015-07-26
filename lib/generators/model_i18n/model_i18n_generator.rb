require 'rails/generators'
require 'rails/generators/named_base'

module EnhancedScaffold
  module Generators
    class ModelI18nGenerator < Rails::Generators::NamedBase # :nodoc:
      source_root File.expand_path('../templates', __FILE__)

      argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"
      class_option :locales, type: :array, default: [:en], desc: "en de"
      # hook_for :orm, required: true, desc: "ORM to be invoked"

      def generate_locale_files
        enforce = I18n.enforce_available_locales
        I18n.enforce_available_locales = false

        locales.each do |locale|
          I18n.with_locale(locale) do
            template 'locale.yml', File.join("config", "locales", "#{file_name}.#{locale.to_s}.yml")
          end
        end

        I18n.enforce_available_locales = enforce
      end

      private

      def locale
        I18n.locale
      end

      def locales
        options[:locales]
      end
    end
  end
end
