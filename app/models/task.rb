class Task < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 255 }
    belongs_to :category
end
