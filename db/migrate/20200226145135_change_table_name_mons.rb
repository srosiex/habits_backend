class ChangeTableNameMons < ActiveRecord::Migration[6.0]
  def change
    rename_table :mons, :mondays
  end
end
