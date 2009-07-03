class Party < ActiveRecord::Base
  belongs_to :party_type
  belongs_to :iparty, :polymorphic => true
  has_many :partyroles
end
