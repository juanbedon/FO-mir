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

	validates :title, presence: true
	validates :description, presence: true

end