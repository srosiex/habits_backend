class CreateSats < ActiveRecord::Migration[6.0]
  def change
    create_table :sats do |t|
      t.string :plan
      t.boolean :complete

      t.timestamps
    end
  end
end
