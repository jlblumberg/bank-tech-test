require 'statement'

describe Statement do
  describe '#print_statement' do
    it 'prints the statement' do
      expect(subject.print_statement).to eq("")
    end
  end
end