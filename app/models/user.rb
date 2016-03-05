class User < ActiveRecord::Base
  validates :username, presence: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :lists, dependent: :destroy
end
