class Event < ApplicationRecord
    belongs_to :category
    validadtes :name, :when, :time, :where, presence: true
end
