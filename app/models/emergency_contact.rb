class EmergencyContact < ActiveRecord::Base

  attr_accessible :position, :name, :number, :typ

  # ----- Associations -----
  belongs_to :member
  acts_as_list :scope => :member_id


  # ----- Callbacks -----


  # ----- Validations -----
  validates_presence_of :name, :number
  validates_format_of :number, :with => /^\d\d\d-\d\d\d-\d\d\d\d$/


  # ----- Scopes -----


  # ----- Local Methods-----

  def output
    "#{name} / #{number} (#{typ})"
  end

end
