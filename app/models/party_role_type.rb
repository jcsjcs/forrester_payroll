class PartyRoleType < ActiveRecord::Base
  belongs_to :party_type
  belongs_to :role_type
end
