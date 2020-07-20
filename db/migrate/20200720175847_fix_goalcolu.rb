class FixGoalcolu < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :goal_id, :integer, :null => true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
