require 'account'

describe Account do

  describe '#show_balance' do
    it 'returns the accounts current balance' do
      expect(subject.show_balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'can top up the account' do
      subject.deposit(10)
      expect(subject.show_balance).to eq(10)
    end
  end

end