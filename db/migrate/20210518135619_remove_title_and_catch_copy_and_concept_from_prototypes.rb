class RemoveTitleAndCatchCopyAndConceptFromPrototypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :prototypes, :title, :string, null: false
    remove_column :prototypes, :catch_copy, :text, null: false
    remove_column :prototypes, :concept, :text, null: false
  end
end