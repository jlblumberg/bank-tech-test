require 'account'

describe Account do

  it 'Keeps track of the accounts balance' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do

    it 'can top up the account' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end

  end

  describe '#withdraw' do

    it 'can remove money from the account' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq(5)
    end

  end

  describe '#add_transaction' do
    let(:current_date) { Time.now.strftime("%d/%m/%Y") }

    it 'adds a credit transaction to the list of transactions' do
      subject.deposit(10)
      expect(subject.transactions).to eq([current_date, "10.00", "", "10.00"])
    end

    it 'adds a debit transaction to the list of transactions' do
      subject.withdraw(10)
      expect(subject.transactions).to eq([current_date, "", "10.00", "-10.00"])
    end

    it 'can keep a record of multiple transactions' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.transactions).to eq([current_date, "10.00", "", "10.00", current_date, "", "5.00", "5.00"])
    end

  end

end
