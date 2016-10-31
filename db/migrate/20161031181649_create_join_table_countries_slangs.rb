class CreateJoinTableCountriesSlangs < ActiveRecord::Migration
  def change
    create_join_table :countries, :slangs do |t|
      t.index [:country_id, :slang_id]
      t.index [:slang_id, :country_id]
    end
  end
end
