class AddNullToGoalInRoutines < ActiveRecord::Migration[6.0]
  def change
    change_column :routines, :goal_id, :integer, null: true
  end
end
