class TripIdea < ApplicationRecord
    scope :active, -> { where( active: true ) }
end
