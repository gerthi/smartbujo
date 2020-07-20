# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  description :text
#  done        :boolean
#  monthly     :boolean
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  goal_id     :integer
#  user_id     :bigint           not null
#
# Indexes
#
#  index_tasks_on_goal_id  (goal_id)
#  index_tasks_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (goal_id => goals.id)
#  fk_rails_...  (user_id => users.id)
#
class Task < ApplicationRecord
  belongs_to :user
  belongs_to :goal, optional: true

  validates :name, presence: true, length: { minimum: 3 }
end
