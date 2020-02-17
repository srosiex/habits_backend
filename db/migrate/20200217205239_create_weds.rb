class CreateWeds < ActiveRecord::Migration[6.0]
  def change
    create_table :weds do |t|
      t.string :plan
      t.boolean :complete

      t.timestamps
    end
  end
end
