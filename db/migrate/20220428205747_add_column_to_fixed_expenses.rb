class AddColumnToFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :fixed_expenses, :pay_year, :string
  end
end
