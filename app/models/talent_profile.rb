class TalentProfile < ApplicationRecord

  belongs_to :user
  belongs_to :genre

  has_many :gigs

end
