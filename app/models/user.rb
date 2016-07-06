class User < ApplicationRecord
  has_many :messages
  has_many :halls, through: :messages

  validates :username, presence: true, uniqueness: true
end
