# Pragma::Contract

[![Build Status](https://img.shields.io/travis/pragmarb/pragma-contract.svg?maxAge=3600&style=flat-square)](https://travis-ci.org/pragmarb/pragma-contract)
[![Dependency Status](https://img.shields.io/gemnasium/pragmarb/pragma-contract.svg?maxAge=3600&style=flat-square)](https://gemnasium.com/github.com/pragmarb/pragma-contract)
[![Code Climate](https://img.shields.io/codeclimate/github/pragmarb/pragma-contract.svg?maxAge=3600&style=flat-square)](https://codeclimate.com/github/pragmarb/pragma-contract)
[![Coveralls](https://img.shields.io/coveralls/pragmarb/pragma-contract.svg?maxAge=3600&style=flat-square)](https://coveralls.io/github/pragmarb/pragma-contract)

Contracts are form objects on steroids for your JSON API.

They are built on top of [Reform](https://github.com/apotonick/reform).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pragma-contract'
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install pragma-contract
```

## Usage

To create a contract, simply inherit from `Pragma::Contract::Base`:

```ruby
module API
  module V1
    module Post
      module Contract
        class Base < Pragma::Contract::Base
          property :title
          property :body
        end
      end
    end
  end
end
```

Since Pragma::Contract is built on top of [Reform](https://github.com/apotonick/reform), you should
consult its documentation for the basic usage of contracts; the rest of this section only covers
the features provided specifically by Pragma::Contract.

### Coercion

Pragma::Contract supports Reform coercion through the [dry-types](https://github.com/dry-rb/dry-types)
gem.

You can access types with the `Pragma::Contract::Types` module.

```ruby
module API
  module V1
    module Post
      module Contract
        class Base < Pragma::Contract::Base
          property :title, type: Pragma::Contract::Types::Coercible::String
          property :body, type: Pragma::Contract::Types::Coercible::String
        end
      end
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pragmarb/pragma-contract.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
