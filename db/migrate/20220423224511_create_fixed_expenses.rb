class CreateFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :fixed_expenses do |t|
      t.integer :house
      t.integer :car
      t.integer :insurance
      t.integer :tax
      t.integer :personal
      t.integer :communication
      t.integer :infra

      t.timestamps
    end
  end
end
