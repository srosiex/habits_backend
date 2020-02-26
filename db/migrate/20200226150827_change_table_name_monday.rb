class ChangeTableNameMonday < ActiveRecord::Migration[6.0]
  def change
    rename_table :mondays, :mons
  end
end
