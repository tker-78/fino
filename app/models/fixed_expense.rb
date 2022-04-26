class FixedExpense < ApplicationRecord
  validates :pay_month, uniqueness: true
end
