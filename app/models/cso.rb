class Cso < ActiveRecord::Base
  belongs_to :operational_area
  belongs_to :membership_type
  belongs_to :annual_budget
  has_many :past_achievements, :dependent => :destroy
  has_and_belongs_to_many :target_groups, :order => :name
  has_and_belongs_to_many :sector_focuses, :order => :name

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :region
  validates_presence_of :district
  validates_presence_of :membership_type_id
  validates_presence_of :operational_area_id
  validates_associated :past_achievements
  validate :must_have_urban_or_rural_focus

  after_update :save_past_achievements

  def new_past_achievement_attributes=(past_achievement_attributes)
    past_achievement_attributes.each do |attributes|
      unless attributes.values.reject{|v| v.blank?}.empty?
        past_achievements.build attributes
      end
    end
  end

  def existing_past_achievement_attributes=(past_achievement_attributes)
    past_achievements.reject(&:new_record?).each do |past_achievement|
      attributes = past_achievement_attributes[past_achievement.id.to_s]
      if attributes and !attributes.values.reject{|v| v.blank?}.empty?
        past_achievement.attributes = attributes
      else
        past_achievements.delete(past_achievement)
      end
    end
  end

  private

  def save_past_achievements
    past_achievements.each do |past_achievement|
      past_achievement.save(false)
    end
  end

  def must_have_urban_or_rural_focus
    errors.add_to_base('At least one of "Urban Focus" and "Rural Focus" must be selected') unless (urban_focus? || rural_focus?)
  end
end
