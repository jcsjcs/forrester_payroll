class CreatePartyRoles < ActiveRecord::Migration
  def self.up
    create_table :party_roles do |t|
      t.belongs_to :party
      t.belongs_to :role_type
      t.datetime :valid_from
      t.datetime :valid_until
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :party_roles
  end
end
