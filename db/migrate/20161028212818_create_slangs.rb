class CreateSlangs < ActiveRecord::Migration
  def change
    create_table :slangs do |t|
      t.text :phrase
      t.text :translation
      t.text :example

      t.timestamps null: false
    end
  end
end
