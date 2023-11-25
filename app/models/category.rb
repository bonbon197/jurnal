class Category < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5, maximum: 255 }
end
