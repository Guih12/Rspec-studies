RSpec.describe Hash do
  # let(:my_hash) { {} }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some value'
    expect(subject.length).to eq(1)
  end
end
