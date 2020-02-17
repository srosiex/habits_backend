class CreateThurs < ActiveRecord::Migration[6.0]
  def change
    create_table :thurs do |t|
      t.string :plan
      t.boolean :complete

      t.timestamps
    end
  end
end
