require 'rails/generators/rails/scaffold/scaffold_generator'
require 'generators/enhanced_scaffold_controller/enhanced_scaffold_controller_generator'

module EnhancedScaffold
  module Generators
    class EnhancedScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      remove_hook_for :scaffold_controller

      hook_for :enhanced_scaffold_controller, required: true

      hook_for :model_i18n, required: true # do |invoked|
      #   invoke invoked, [ controller_name, options[:actions] ]
      # end
    end
  end
end
