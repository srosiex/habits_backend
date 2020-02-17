class AddColorColToHabitsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :color, :string, :default => "#fff"
  end
end
