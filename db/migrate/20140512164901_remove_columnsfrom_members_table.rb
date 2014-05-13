class RemoveColumnsfromMembersTable < ActiveRecord::Migration
  def change
    remove_column :members, :house, :string
    remove_column :members, :state, :string
    remove_column :members, :state, :string
    remove_column :members, :district, :string
    remove_column :members, :tenure, :string
    remove_column :members, :salary, :string
    remove_column :members, :party, :string
  end
end
