class Account

  attr_reader :transactions, :balance

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def stringify(input)
    input == "" ? "" : "#{input.to_f}0"
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
    credit_amount = stringify(credit_amount)
    debit_amount = stringify(debit_amount)
    @transactions.push(date, credit_amount, debit_amount, stringify(@balance))
  end

end
