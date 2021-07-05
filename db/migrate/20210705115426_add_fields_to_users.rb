class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :terms, :boolean
    add_column :users, :location, :string
  end
end
