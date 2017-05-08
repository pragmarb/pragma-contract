# frozen_string_literal: true

require 'reform/form/coercion'
require 'reform/form/dry'

module Pragma
  module Contract
    # This is the base contract that all of your resource-specific contracts should inherit from.
    #
    # It's just an extension of +Reform::Form+ with some helper methods for coercion.
    #
    # @author Alessandro Desantis
    class Base < Reform::Form
      feature Reform::Form::Coercion
      feature Reform::Form::Dry

      property :current_user, virtual: true

      class << self
        def property(name, options = {})
          super
        end

        protected

        def strict(type)
          build_type 'Strict', type
        end

        def coercible(type)
          build_type 'Coercible', type
        end

        def form(type)
          build_type 'Form', type
        end

        def json(type)
          build_type 'Json', type
        end

        def maybe_strict(type)
          build_type 'Maybe::Strict', type
        end

        def maybe_coercible(type)
          build_type 'Maybe::Coercible', type
        end

        private

        def build_type(namespace, type)
          Object.const_get "Pragma::Contract::Types::#{namespace}::#{type.to_s.capitalize}"
        end
      end
    end
  end
end
