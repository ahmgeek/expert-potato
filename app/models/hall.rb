class Hall < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages

  validates :name, presence: true, uniqueness: true, case_sensitive: false
  before_validation :sanitize, :urlify

  # Naieve friendly url implementation
  def to_param
    self.permalink
  end

  def urlify
    self.permalink = self.name.downcase.gsub(" ", "-")
  end

  def sanitize
    self.name = self.name.strip
  end
end
