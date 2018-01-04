class User < ActiveRecord::Base
  has_secure_password

  has_many :associates
  has_many :friends, through: :associates
end
