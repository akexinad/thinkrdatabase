# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  has_many :thinkers
  has_many :favourites
end
