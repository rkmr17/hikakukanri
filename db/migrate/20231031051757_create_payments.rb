class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer    :amount, null: false
      t.text       :memo,   null: false
      t.date       :day,    null: false
      t.references :user,   null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
