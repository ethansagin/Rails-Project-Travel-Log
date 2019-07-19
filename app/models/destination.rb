class Destination < ApplicationRecord
    belongs_to :user, inverse_of: :destinations
    belongs_to :country

    accepts_nested_attributes_for :country

    scope :visited, -> { where(visited: true) }
    scope :not_visited, -> { where(visited: false) }    

    def country_attributes=(att)
        self.country = Country.find_or_create_by(name: att[:name])
        self.country.update(att)
    end

end
