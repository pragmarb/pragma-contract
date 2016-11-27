RSpec.describe Pragma::Contract::Base do
  subject { form_klass.new(model) }

  let(:form_klass) do
    Class.new(described_class) do
      property :title, type: coercible(:string)

      validation do
        required(:title).filled
      end
    end
  end

  let(:model) { OpenStruct.new }

  it 'is instantiated correctly' do
    expect { subject }.not_to raise_error
  end

  it 'coerces values correctly' do
    subject.validate(title: 1)
    expect(subject.title).to eq('1')
  end

  it 'validates properties correctly' do
    subject.validate(title: nil)
    expect(subject).not_to be_valid
  end
end
