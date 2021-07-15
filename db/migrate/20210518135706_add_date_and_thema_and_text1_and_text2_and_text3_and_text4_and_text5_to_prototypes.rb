class AddDateAndThemaAndText1AndText2AndText3AndText4AndText5ToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :date, :date, null: false
    add_column :prototypes, :thema, :text, null: false
    add_column :prototypes, :text1, :text, null: false
    add_column :prototypes, :text2, :text, null: false
    add_column :prototypes, :text3, :text, null: false
    add_column :prototypes, :text4, :text, null: false
    add_column :prototypes, :text5, :text, null: false
    add_column :prototypes, :text6, :text, null: false
  end
end