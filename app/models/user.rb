class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password, :password_confirmation, presence:true

  validates :email, uniqueness: {case_sensitive: false, message: "same"}
  validates :email, format: { without: /\s/, message: "must contain no spaces" }

  validates :password, length: {minimum: 3}

end
