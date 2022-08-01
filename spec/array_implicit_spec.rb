RSpec.describe Array do
  it 'should return length 0' do
    expect(subject.length).to eq 0
  end

  it 'should return length 1' do
    subject.push(1)
    expect(subject.length).to eq 1
  end
end
