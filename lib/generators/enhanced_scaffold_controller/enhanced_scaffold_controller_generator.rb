require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'
require 'generators/erb/enhanced_scaffold/enhanced_scaffold_generator'

module EnhancedScaffold
  module Generators
    class EnhancedScaffoldControllerGenerator < Rails::Generators::ScaffoldControllerGenerator
      source_root File.expand_path('../templates', __FILE__)

      remove_hook_for :template_engine

      hook_for :template_engine, :as => :enhanced_scaffold # do |invoked|
        # invoke invoked, [ controller_name, options[:actions] ]
      # end
    end
  end
end
