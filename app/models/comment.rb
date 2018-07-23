# == Schema Information
#
# Table name: comments
#
#  id          :bigint(8)        not null, primary key
#  body        :text
#  question_id :bigint(8)
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord

  belongs_to :question
  belongs_to :user

  validates :body, presence: true
  
end