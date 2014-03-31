class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.integer :lang_enum_id
      t.string :word
      t.string :description

      t.timestamps
    end
    add_index :dictionaries, [:lang_enum_id, :word], unique: true
  end
end
