class Account

  attr_reader :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def balance_to_string
    "#{@balance.to_f}0"
  end

  def deposit(amount)
    @balance += amount
    add_transaction(amount, "")
  end

  def withdraw(amount)
    @balance -= amount
    add_transaction("", amount)
  end

  def add_transaction(date = Time.now.strftime("%d/%m/%Y"), credit_amount, debit_amount)
    credit_amount = "#{credit_amount.to_f}0" if credit_amount != ""
    debit_amount = "#{debit_amount.to_f}0" if debit_amount != ""
    @transactions.push(date, credit_amount, debit_amount, balance_to_string)
  end

end
