class Dish < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many         :comments, dependent: :destroy
  
    validates :title,     presence: true
    validates :category,  presence: true
    validates :material,  presence: true
    validates :one,       presence: true
    validates :two,       presence: true
    validates :three,     presence: true
    validates :image,     presence: true
  
end