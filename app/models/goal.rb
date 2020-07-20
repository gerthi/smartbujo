# == Schema Information
#
# Table name: goals
#
#  id          :bigint           not null, primary key
#  color       :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  contract_id :bigint           not null
#
# Indexes
#
#  index_goals_on_contract_id  (contract_id)
#
# Foreign Keys
#
#  fk_rails_...  (contract_id => contracts.id)
#
class Goal < ApplicationRecord
  belongs_to :contract
  has_many :tasks
  has_many :routines

  validates :name, presence: true, length: { minimum: 3 }
  validates :color, presence: true, length: { is: 7 }
end
