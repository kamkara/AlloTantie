class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :title
      t.text :content
      t.string :price
      t.string :img_product
      t.string :img_country
      t.string :author
      t.string :avatar
      t.references :category, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :slug

      t.timestamps
    end
  end
end
