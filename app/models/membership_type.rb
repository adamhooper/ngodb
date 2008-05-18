class MembershipType < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :name_sw
  validates_uniqueness_of :name_sw
end
