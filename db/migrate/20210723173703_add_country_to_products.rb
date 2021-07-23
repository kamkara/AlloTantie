class AddCountryToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :country, null: false, foreign_key: true, type: :uuid
  end
end
