# frozen_string_literal: true

module Pragma
  module Contract
    module Coercion
      def self.included(klass)
        klass.extend ClassMethods
      end

      module ClassMethods
        def property(*args, &block)
          if block_given?
            super(*args) do
              include Pragma::Contract::Coercion
              instance_eval(&block)
            end
          else
            super(*args)
          end
        end

        private

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

        def build_type(namespace, type)
          Object.const_get "Pragma::Contract::Types::#{namespace}::#{type.to_s.capitalize}"
        end
      end
    end
  end
end
