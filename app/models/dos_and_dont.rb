class DosAndDont < ApplicationRecord
    belongs_to :destination

    validates :name, presence: true, uniqueness: true

    scope :recommended, -> { where(recommend: true) }
    scope :not_recommended, -> { where(recommend: false) } 

end