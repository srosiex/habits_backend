class AddDefaultToDaysCompleteHabits < ActiveRecord::Migration[6.0]
  def change
    change_column :habits, :days_complete, :integer, :default => 0
  end
end
