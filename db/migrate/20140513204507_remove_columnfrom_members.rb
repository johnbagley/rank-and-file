class RemoveColumnfromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :current_role_type?, :string
  end
end
