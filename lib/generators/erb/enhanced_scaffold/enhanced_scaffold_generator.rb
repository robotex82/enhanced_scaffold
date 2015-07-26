require 'rails/generators/erb/scaffold/scaffold_generator'

module Erb
  module Generators
    class EnhancedScaffoldGenerator < ::Erb::Generators::ScaffoldGenerator
      source_root File.expand_path('../templates', __FILE__)
    end
  end
end
