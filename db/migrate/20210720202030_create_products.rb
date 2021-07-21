class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :title
      t.string :describre
      t.string :price
      t.string :type
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
