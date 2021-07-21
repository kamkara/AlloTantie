class AddCountryIndexToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :country, :string
    add_index :products, :country
  end
end
