class ChangeColumnTypesInMembersTable < ActiveRecord::Migration
  def up
    change_column :members, :photo_url, :text
    change_column :members, :current_roles, :text
    change_column :members, :current_role_type, :text
  end

  def down
    change_column :members, :photo_url, :string
    change_column :members, :current_roles, :string
    change_column :members, :current_role_type, :string
  end
end
