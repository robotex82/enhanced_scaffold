require 'rails/generators'
require 'rails/generators/named_base'

module EnhancedScaffold
  module Generators
    class ModelI18nGenerator < Rails::Generators::NamedBase # :nodoc:
      source_root File.expand_path('../templates', __FILE__)

      argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"
      # hook_for :orm, required: true, desc: "ORM to be invoked"

      def generate_locale_files
        I18n.available_locales.each do |locale|
          I18n.with_locale(locale) do
            template 'locale.yml', File.join("config", "locales", "#{file_name}.#{locale}.yml")
          end
        end
      end

      private

      def locale
        I18n.locale
      end
    end
  end
end
