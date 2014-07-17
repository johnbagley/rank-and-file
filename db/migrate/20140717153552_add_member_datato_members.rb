class AddMemberDatatoMembers < ActiveRecord::Migration
  def change
    add_column :members, :bills_sponsored, :integer, default: 0
    add_column :members, :bills_cosponsored, :integer, default: 0
    add_column :members, :amendments_sponsored, :integer, default: 0
    add_column :members, :amendments_cosponsored, :integer, default: 0
  end
end
