class Destination < ApplicationRecord
    belongs_to :user, inverse_of: :destinations
    belongs_to :country
    has_many :attractions

    accepts_nested_attributes_for :country

    validates :name, presence: true

    scope :visited, -> { where(visited: true).order('name asc') }
    scope :not_visited, -> { where(visited: false).order('name asc') }    

    def country_attributes=(att)
        if !att[:name].blank? && att[:id].blank?
            self.country = Country.find_or_create_by(name: att[:name])
        elsif !att[:id].blank?
            self.country = Country.find_by(id: att[:id])
        end
    end

end
