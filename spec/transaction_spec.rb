require 'transaction'

describe Transaction do
  let(:current_date) { Time.now.strftime("%d/%m/%Y") }

  describe '#details' do

    it 'handles credit interactions' do
      transaction = described_class.new(current_date, "credit", 10)
      expect(transaction.details).to eq([current_date, "10.00", ""])
    end

    it 'handles debit interactions' do
      transaction = described_class.new(current_date, "debit", 5)
      expect(transaction.details).to eq([current_date, "", "5.00"])
    end

  end

end
