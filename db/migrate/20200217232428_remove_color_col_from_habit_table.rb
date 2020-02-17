class RemoveColorColFromHabitTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :habits, :color, :string, :default => "#fff"
  end
end
