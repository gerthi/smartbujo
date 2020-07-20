# == Schema Information
#
# Table name: contracts
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_contracts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Contract < ApplicationRecord
  belongs_to :user
  has_many :goals, dependent: :destroy

  validates :year, presence: true, length: { is: 4 }
  validates_associated :goals
end
