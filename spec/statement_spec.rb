require 'statement'

describe Statement do

  describe '#print_statement' do
    let(:an_account) { double("account", transactions: ["01/12/2020", "10.00", "", "10.00", "02/12/2020", "", "5.00", "5.00"]) }

    it 'Prints the statement in the desired format' do
      statement = Statement.new(an_account)
      expect(statement.print_statement).to eq("date || credit || debit || balance\n02/12/2020 || || 5.00 || 5.00\n01/12/2020 || 10.00 || || 10.00")
    end

  end

end