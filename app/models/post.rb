class Post < ApplicationRecord
  belongs_to :city
  validates :title, :presence => true
  validates :synopsis, :presence => true, length: {in: 1..200}
end
