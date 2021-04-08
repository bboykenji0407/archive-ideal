class Event < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :remarks
  end
end