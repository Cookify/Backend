class Provider < ActiveRecord::Base
  belongs_to :user
  has_many :packages
  has_many :provider_ratings


  def average_rating
    if self.provider_ratings.size > 0
      self.provider_ratings.average(:rating)
    else
      nil
    end
  end
end
