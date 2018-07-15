# frozen_string_literal: true

require 'adaptor'
require 'dry-validation'
require 'dry-types'
require 'reform'

require 'pragma/contract/version'

require 'pragma/contract/coercion'

require 'pragma/contract/model_finder/base'
require 'pragma/contract/model_finder/active_record'
require 'pragma/contract/model_finder'

require 'pragma/contract/base'

require 'pragma/contract/types'

module Pragma
  # Form objects on steroids for your HTTP API.
  module Contract
  end
end
