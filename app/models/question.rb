# == Schema Information
#
# Table name: questions
#
#  id                 :bigint(8)        not null, primary key
#  title              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint(8)
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Question < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :votes

	has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }

	validates :title, presence: true
	validates :description, presence: true
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def voted_by?(user)
		votes.exists?(user: user)
	end

end
