class Doctor < ApplicationRecord
  belongs_to :city 
  
 
  has_many :deal_with_its
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :deal_with_its
  has_many :specialities, through: :deal_with_its
end
