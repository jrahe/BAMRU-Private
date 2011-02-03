class User < ActiveRecord::Base

  # ----- Associations -----

  has_many :addresses
  has_many :phones
  has_many :emails
  has_many :roles
  has_many :photos
  has_many :do_avails
  has_many :do_assignments
  has_many :messages
  has_many :distributions

  # ----- Callbacks -----



  # ----- Validations -----



  # ----- Scopes -----



  # ----- Local Methods-----


end