class AddCountryRefToSlangs < ActiveRecord::Migration
  def change
    add_reference :slangs, :country, index: true, foreign_key: true
  end
end
