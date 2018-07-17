# == Schema Information
#
# Table name: votes
#
#  id          :bigint(8)        not null, primary key
#  question_id :bigint(8)
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Vote < ApplicationRecord

  belongs_to :question
  belongs_to :user
  
end