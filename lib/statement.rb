class Statement
  
  def initialize
    @result = []
  end

  def print_statement
    @result.join('\n')
  end

  def add_header
    @result.push("date || credit || debit || balance")
  end

end
