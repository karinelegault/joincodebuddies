class RemoveSkillsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :skills, :string
  end
end
