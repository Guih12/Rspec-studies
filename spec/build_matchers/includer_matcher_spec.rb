RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it { is_expected.to include('hot') }
    it { is_expected.to include('chocolate') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(10) }
    it { is_expected.to include(10, 20) }
    it { is_expected.to include(30, 20) }
  end

  describe({ a: 2, b: 4 }) do
    it { is_expected.to include(:a) }
    it { is_expected.to include(b: 4) }
  end
end
