class Statement
  
  def initialize
    @statement_rows = []
  end

  def print_statement
    @statement_rows.join('\n')
  end

  def add_header
    @statement_rows.push("date || credit || debit || balance")
  end

end
