require 'transaction'

describe Transaction do
  let(:current_time) { Time.now.strftime("%d/%m/%Y") }

  describe '#details' do

    it 'handles credit interactions' do
      transaction = described_class.new(current_time, "credit", 10)
      expect(transaction.details).to eq([current_time, "10.00", ""])
    end

    it 'handles debit interactions' do
      transaction = described_class.new(current_time, "debit", 5)
      expect(transaction.details).to eq([current_time, "", "5.00"])
    end

  end

end
