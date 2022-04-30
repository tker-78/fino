class CreateVariableExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :variable_expenses do |t|
      t.integer :food
      t.integer :car
      t.integer :trans
      t.integer :child
      t.integer :comodity
      t.integer :furniture
      t.integer :present
      t.integer :cash
      t.string :pay_year
      t.string :pay_month

      t.timestamps
    end
  end
end
