class Region < ApplicationRecord
    has_many :countries, dependent: :nullify
    scope :active, -> { where( active: true ) }
end
