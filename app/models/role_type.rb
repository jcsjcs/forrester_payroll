class RoleType < ActiveRecord::Base
  has_many :party_role_types
  has_many :party_roles
end
