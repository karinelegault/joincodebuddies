class AddTeammatesToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :teammates, :integer, array: true
    add_index :projects, :teammates, using: 'gin'
  end
end
