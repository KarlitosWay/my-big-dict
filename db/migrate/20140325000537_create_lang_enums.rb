class CreateLangEnums < ActiveRecord::Migration
  def change
    create_table :lang_enums do |t|
      t.string :short_descr
      t.string :long_descr

      t.timestamps
    end
  end
end
