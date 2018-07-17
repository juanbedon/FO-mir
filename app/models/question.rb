# == Schema Information
#
# Table name: questions
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
end