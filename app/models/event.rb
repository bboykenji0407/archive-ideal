class Event < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  with_options presence: true do
    validates :name
    validates :remarks
  end
end