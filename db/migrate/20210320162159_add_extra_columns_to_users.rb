class AddExtraColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :description, :string
    add_column :users, :skills, :string
  end
end

