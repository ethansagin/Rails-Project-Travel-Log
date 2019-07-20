class Attraction < ApplicationRecord
    belongs_to :destination

    validates :name, presence: true, uniqueness: true

    scope :recommended, -> { where(recommend: true).order('name asc') }
    scope :not_recommended, -> { where(recommend: false).order('name asc') } 

end
