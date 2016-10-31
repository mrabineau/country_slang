class User < ActiveRecord::Base
  has_many :slangs
  has_many :countries, through: :slangs

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
