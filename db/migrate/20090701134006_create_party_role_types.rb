class CreatePartyRoleTypes < ActiveRecord::Migration
  def self.up
    create_table :party_role_types do |t|
      t.string :name
      t.text :description
      t.belongs_to :party_type
      t.belongs_to :role_type
      t.datetime :valid_from
      t.datetime :valid_until
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
    add_index :party_role_types, :name, :unique => true
  end

  def self.down
    drop_table :party_role_types
  end
end
