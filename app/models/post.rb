class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :comments
  validates :title, :presence => true, length: {in: 1..200}
  validates :synopsis, :presence => true
end
