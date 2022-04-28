class ChangeColumnPayMonthToString < ActiveRecord::Migration[7.0]
  def change
    change_column :fixed_expenses, :pay_month, :string
  end
end
