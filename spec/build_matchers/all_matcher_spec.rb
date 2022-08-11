RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    [5, 7, 9].each { |value| expect(value).to be_odd }

    expect([5, 7, 9, 13]).to all(be_odd)
    expect([4, 6, 8, 10]).to all(be_even)
    expect([]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end

  describe 'verify array hash' do
    let(:params) do
      [
        {
          name: 'george',
          age: ''
        },
        {
          name: 'lemos',
          age: ''
        }
      ]
    end

    it 'include hash key name' do
      expect(params).to all(include(:name))
    end

    it 'include hash key age' do
      expect(params).to all(include(:age))
    end

    it 'return true' do
      params.each { |param| expect(param[:name]).to_not be_empty }
    end

    it 'return false if key age blank' do
      params.each { |param| expect(param[:age]).to eq '' }
    end
  end
end
