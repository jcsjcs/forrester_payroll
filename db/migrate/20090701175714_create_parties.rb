class CreateParties < ActiveRecord::Migration
  def self.up
    create_table :parties do |t|
      t.belongs_to :party_type
      t.belongs_to :iparty, :polymorphic => true
      t.datetime :valid_from
      t.datetime :valid_until
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :parties
  end
end
