class Category < ApplicationRecord
    has_many :events
    validadtes :name, presence: true
end
