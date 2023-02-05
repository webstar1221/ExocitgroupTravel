class Page < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    scope :active, -> { where( active: true ) }

    private

    def should_generate_new_friendly_id?
        slug.blank? || name_changed?
    end
end
