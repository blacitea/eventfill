class User < ApplicationRecord

  has_many :events
  has_many :images
  has_many :talent_profiles
  has_many :registrations
  has_many :messages #add more specific?

end
