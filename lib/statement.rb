class Statement

  HEADER = "date || credit || debit || balance\n"
  
  def initialize(account)
    @transactions = account.transactions
  end

  def print_statement
    format_statement
    print @transactions
  end

  private

  def add_header
    @transactions = HEADER + @transactions
  end

  def reverse_transactions
    @transactions = @transactions.each_slice(4).to_a.reverse
  end

  def add_pipes_and_newlines
    @transactions.map! { |transaction| transaction.join(" || ") }
    @transactions = @transactions.join("\n")
  end

  def format_statement
    reverse_transactions
    add_pipes_and_newlines
    add_header
    @transactions.gsub!("  ", " ")
  end

end
