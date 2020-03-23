class Account

  def initialize(balance = 0)
    @balance = balance
  end

  def show_balance
    "#{@balance.to_f}0"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
