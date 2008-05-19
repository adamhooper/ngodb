class PastAchievement < ActiveRecord::Base
  belongs_to :cso
  validates_presence_of :year
  validates_presence_of :description
  validates_presence_of :description_sw
end
