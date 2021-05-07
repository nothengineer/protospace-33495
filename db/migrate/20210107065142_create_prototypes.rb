class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.date :date,                null: false
      t.text :thema,               null: false
      t.text :text1,               null: false
      t.text :text2,               null: false
      t.text :text3,               null: false
      t.text :text4,               null: false
      t.text :text5,               null: false
      

      t.references :user

      t.timestamps
    end
  end
end