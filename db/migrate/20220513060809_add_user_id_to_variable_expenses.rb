class AddUserIdToVariableExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :variable_expenses, :user, foreign_key: true
  end
end
