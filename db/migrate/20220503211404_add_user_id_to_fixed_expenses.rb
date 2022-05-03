class AddUserIdToFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :fixed_expenses, :user, foreign_key: true
  end
end
