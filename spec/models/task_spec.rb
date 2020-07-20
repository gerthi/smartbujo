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
require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
