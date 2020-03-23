require 'account'

describe Account do

  describe '#show_balance' do
    it 'returns the accounts current balance' do
      expect(subject.show_balance).to eq(0)
    end
  end

end