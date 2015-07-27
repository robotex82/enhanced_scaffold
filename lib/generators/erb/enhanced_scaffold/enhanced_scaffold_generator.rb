require 'rails/generators/erb/scaffold/scaffold_generator'

module Erb
  module Generators
    class EnhancedScaffoldGenerator < ::Erb::Generators::ScaffoldGenerator
      source_root File.expand_path('../templates', __FILE__)

      def available_views
        %w(index edit show new _form _search_form)
      end
    end
  end
end
