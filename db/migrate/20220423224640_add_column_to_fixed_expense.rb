class AddColumnToFixedExpense < ActiveRecord::Migration[7.0]
  def change
    add_column :fixed_expenses, :pay_month, :date
  end
end
