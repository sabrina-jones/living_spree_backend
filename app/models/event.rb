class Event < ApplicationRecord
    belongs_to :category
    validates :name, :when, :time, :where, presence: true
end
