class Task < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2, maximum: 255 }
    validates :details, presence: true, length: { minimum: 2, maximum: 255 }
    belongs_to :user
    belongs_to :category
end
