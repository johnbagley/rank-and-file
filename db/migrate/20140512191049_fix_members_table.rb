class FixMembersTable < ActiveRecord::Migration
  def change
    drop_table :members do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "chamber"
      t.string   "photo_url"
      t.string   "start_date"
      t.string   "current_roles"
      t.string   "current_role_type"
      t.string   "year_of_start_date"
      t.string   "starting_senator_salary"
      t.string   "year_of_end_date"
      t.string   "cumulative_senator_salary"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    rename_table :member_apis, :members
  end
end
