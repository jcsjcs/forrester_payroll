class PartyRole < ActiveRecord::Base
  belongs_to :party
  belongs_to :role_type
end
