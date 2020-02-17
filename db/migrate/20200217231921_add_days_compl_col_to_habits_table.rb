class AddDaysComplColToHabitsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :days_complete, :integer
  end
end
