# frozen_string_literal: true
module Pragma
  module Contract
    # Provides useful predicates in addition to dry-validation's defaults.
    #
    # @author Alessandro Desantis
    module Predicates
      include Dry::Logic::Predicates

      WHITESPACE_PATTERN = /\A[[:space:]#{"\u200B\u200C\u200D\u2060\uFEFF"}]*\z/

      predicate(:present?) do |input|
        !(WHITESPACE_PATTERN =~ input)
      end
    end
  end
end
