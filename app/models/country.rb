class Country < ApplicationRecord
    has_many :tours, dependent: :delete_all
    belongs_to :region, optional: true
    scope :active, -> { where( active: true ) }
end
