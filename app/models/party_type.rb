class PartyType < ActiveRecord::Base
  has_many :party_role_types
  has_many :parties
end
