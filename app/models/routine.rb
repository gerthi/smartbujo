# == Schema Information
#
# Table name: routines
#
#  id         :bigint           not null, primary key
#  freq_type  :string
#  frequency  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  goal_id    :integer
#  user_id    :bigint           not null
#
# Indexes
#
#  index_routines_on_goal_id  (goal_id)
#  index_routines_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (goal_id => goals.id)
#  fk_rails_...  (user_id => users.id)
#
class Routine < ApplicationRecord
  belongs_to :user
  belongs_to :goal, optional: true

  validates :name, presence: true, length: { minimum: 3 }
  validates :frequency, numericality: { greather_than: 0, less_than: 10 }
  validates :type, presence: true, inclusion: {
    in: %w(daily weekly monthly), message: "%{value} is not a valid option"
    }
end
