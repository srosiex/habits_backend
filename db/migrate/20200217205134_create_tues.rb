class CreateTues < ActiveRecord::Migration[6.0]
  def change
    create_table :tues do |t|
      t.string :plan
      t.boolean :complete

      t.timestamps
    end
  end
end
