class AddCountryToSlang < ActiveRecord::Migration
  def change
    add_column :slangs, :country, :string
  end
end
