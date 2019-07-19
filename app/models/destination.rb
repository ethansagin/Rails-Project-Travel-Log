class Destination < ApplicationRecord
    belongs_to :user, inverse_of: :destinations
    belongs_to :country
    has_many :attractions

    accepts_nested_attributes_for :country

    validates :name, presence: true, uniqueness: true

    scope :visited, -> { where(visited: true) }
    scope :not_visited, -> { where(visited: false) }    

    def country_attributes=(att)
        self.country = Country.find_or_create_by(name: att[:name])
        self.country.update(att)
    end

end
