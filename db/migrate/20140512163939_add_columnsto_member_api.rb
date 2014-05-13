class AddColumnstoMemberApi < ActiveRecord::Migration
  def change
    create_table :member_apis do |t|
      t.string :first_name
      t.string :last_name
      t.string :chamber
      t.string :party
      t.string :photo_url
      t.string :salary
      t.string :start_date
      t.string :current_roles
      t.string :current_role_type?
      t.string :current_role_type
      t.string :year_of_start_date
      t.string :starting_senator_salary
      t.string :year_of_end_date
      t.string :cumulative_senator_salary

      t.timestamps
    end

  end
end
