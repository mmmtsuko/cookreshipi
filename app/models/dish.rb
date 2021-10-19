class Dish < ApplicationRecord
    belongs_to :user
    has_one_attached :image
  
    validates :title,     presence: true
    validates :arerugi,   presence: true
    validates :material,  presence: true
    validates :procedure, presence: true
    validates :image,     presence: true
  
end
