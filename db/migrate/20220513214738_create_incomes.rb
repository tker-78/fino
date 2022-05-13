class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.integer :salary_t
      t.integer :salary_s
      t.integer :bonus_t
      t.integer :bonus_s
      t.integer :cashback
      t.integer :childcate_t
      t.integer :childcare_s
      t.integer :childsupport
      t.integer :others
      t.string :pay_year
      t.string :pay_month
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
