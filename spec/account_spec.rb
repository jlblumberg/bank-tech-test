require 'account'

describe Account do

  describe '#stringify' do

    it 'returns the accounts current balance as a string' do
      expect(subject.balance_to_string).to eq("0.00")
    end

  end

  describe '#deposit' do

    it 'can top up the account' do
      subject.deposit(10)
      expect(subject.balance_to_string).to eq("10.00")
    end

  end

  describe '#withdraw' do

    it 'can remove money from the account' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance_to_string).to eq("5.00")
    end

  end

  describe '#add_transaction' do
    let(:current_time) { Time.now.strftime("%d/%m/%Y") }

    it 'adds a credit transaction to the list of transactions' do
      subject.deposit(10)
      expect(subject.transactions).to eq([current_time, "10.00", "", "10.00"])
    end

    it 'adds a debit transaction to the list of transactions' do
      subject.withdraw(10)
      expect(subject.transactions).to eq([current_time, "", "10.00", "-10.00"])
    end
    
  end

end
