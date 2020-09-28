class Genre < ApplicationRecord

  has_many :events
  has_many :talent_profiles

end
