require 'statement'

describe Statement do

  describe '#print_statement' do
    it 'prints the statement' do
      expect(subject.print_statement).to eq("")
    end
  end

  describe '#add_header' do
    it 'Adds the statement header to the statement array' do
      subject.add_header
      expect(subject.print_statement).to eq("date || credit || debit || balance")
    end
  end

end
