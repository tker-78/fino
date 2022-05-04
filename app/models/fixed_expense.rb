class FixedExpense < ApplicationRecord
  validates :pay_month, uniqueness: { scope: :pay_year }
  validates :pay_year, length: {is: 4} 
  validates :pay_month, length: {maximum: 2}

  belongs_to :user

  def pay_day
    begin
      pay_year + '-' + pay_month
    rescue 
      nil
    end
  end

  def total
    total = 0
    VALUES.each do |v|
      unless self.send(v) == nil
        total += self.send(v)
      else
        0
      end
    end
    total
  end

  VALUES = %i(house car insurance tax personal communication infra)
end
