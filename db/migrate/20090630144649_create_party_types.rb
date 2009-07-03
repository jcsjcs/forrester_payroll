class CreatePartyTypes < ActiveRecord::Migration

  def self.up
    create_table :party_types do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.timestamp :valid_from, :null => false
      t.timestamp :valid_until, :null => false
      t.timestamps
      t.string :created_by, :null => false
      t.string :updated_by, :null => true
    end
    add_index :party_types, :name, :unique => true
  end

  def self.down
    drop_table :party_types
  end
end
