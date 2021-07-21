class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries, id: :uuid do |t|
      t.string :title
      t.string :img_country
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
