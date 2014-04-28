class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :house
      t.string :state
      t.string :district
      t.string :tenure
      t.string :salary
      t.string :party

      t.timestamps
    end
  end
end
