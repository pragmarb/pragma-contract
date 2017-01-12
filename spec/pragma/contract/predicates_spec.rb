# frozen_string_literal: true
RSpec.describe Pragma::Contract::Predicates do
  subject { form_klass.new(model) }

  let(:form_klass) do
    Class.new(Pragma::Contract::Base) do
      property :title

      validation do
        configure do
          predicates Pragma::Contract::Predicates
        end

        required(:title).value(:present?)
      end
    end
  end

  let(:model) { OpenStruct.new }

  describe '.present?' do
    it 'fails when the value is made of whitespace only' do
      expect(subject.validate(title: '   ')).to eq(false)
    end

    it 'succeeds when the value is not made of whitespace only' do
      expect(subject.validate(title: '  hello  ')).to eq(true)
    end
  end
end
