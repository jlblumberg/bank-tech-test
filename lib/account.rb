class Account

  attr_reader :transactions, :balance

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    transaction = Transaction.new("credit", amount).details
    add_transaction(transaction)
  end

  def withdraw(amount)
    @balance -= amount
    transaction = Transaction.new("debit", amount).details
    add_transaction(transaction)
  end

  private

  def add_transaction(transaction)
    @transactions.push(transaction[0], transaction[1], transaction[2], "#{@balance.to_f}0")
  end

end
