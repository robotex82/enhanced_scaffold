require 'enhanced_scaffold/engine'
require 'rails/generators/active_model'
require 'generators/model_i18n/model_i18n_generator'

module EnhancedScaffold
  module ActiveModelPaginationExtension
    module ClassMethods
      def paginate(klass)
        "#{klass}.page params[:page]"
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end

Rails::Generators::ActiveModel.send(:include, EnhancedScaffold::ActiveModelPaginationExtension)