class Transaction

  def initialize(date = Time.now.strftime("%d/%m/%Y"), type, amount)
    @date = date
    @type = type
    @amount = amount
  end

  def details
    return [@date, stringify(@amount), ""] if @type == "credit"
    return [@date, "", stringify(@amount)] if @type == "debit"
  end

  def stringify(input)
    "#{input.to_f}0"
  end
end