class Post < ApplicationRecord
  belongs_to :city
  validates :title, :presence => true, length: {in: 1..200}
  validates :synopsis, :presence => true
end
