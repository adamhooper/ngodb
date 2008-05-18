class Cso < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :name_sw
  validates_uniqueness_of :name_sw
  validates_presence_of :region
  validates_presence_of :district
  validates_presence_of :membership_type_id
  validates_presence_of :operational_area_id
  validate :must_have_urban_or_rural_focus

  private

  def must_have_urban_or_rural_focus
    errors.add_to_base('At least one of "Urban Focus" and "Rural Focus" must be selected') unless (urban_focus? || rural_focus?)
  end
end
