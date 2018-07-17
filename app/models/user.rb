# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string(100)
#  password_digest :string
#  name            :string(100)
#  username        :string(50)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
	has_secure_password validations: false
end
