class FixMembersTable < ActiveRecord::Migration
  def change
    drop_table :members
    rename_table :member_apis, :members
  end
end
