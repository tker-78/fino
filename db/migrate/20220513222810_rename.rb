class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :incomes, :childcate_t, :childcare_t
  end
end
