class Inquiry < ApplicationRecord
    belongs_to :tour, optional: true
    belongs_to :trip_idea, optional: true
    enum title: { Mr: 0, Mrs: 1, Ms: 2, Other:3 }
    enum user_type: { Customer:0, Agent: 1 }
    enum contact_method:  { Email:0, Phone: 1 }
end
