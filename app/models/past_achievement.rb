class PastAchievement < ActiveRecord::Base
  extend ModelTranslations

  validates_presence_of :description
  validates_uniqueness_of :description
  validates_presence_of :description_sw
  validates_uniqueness_of :description_sw

  localize :description
end
