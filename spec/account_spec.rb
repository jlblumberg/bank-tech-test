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

  describe '#withdraw' do
    it 'can remove money from the account' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.show_balance).to eq(5)
    end
  end

end
