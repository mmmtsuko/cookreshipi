class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :dish


  validates :text, presence: true
end
