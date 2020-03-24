class Statement
  
  def initialize(account)
    @transactions = account.transactions
  end

  def print_statement
    @transactions = @transactions.each_slice(4).to_a.reverse
    @transactions.map! { |transaction| transaction.join(" || ") }
    @transactions = @transactions.join("\n")
    @transactions = "date || credit || debit || balance\n" + @transactions
    @transactions.gsub!("  ", " ")
  end

end
