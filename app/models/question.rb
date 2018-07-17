# == Schema Information
#
# Table name: questions
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

class Question < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :votes

	validates :title, presence: true
	validates :description, presence: true

	def voted_by?(user)
		votes.exists?(user: user)
	end

end