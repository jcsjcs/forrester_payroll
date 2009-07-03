class CreateIndividuals < ActiveRecord::Migration
  def self.up
    create_table :individuals do |t|
      t.string :familyname
      t.string :givenname
      t.date :birth_date
      t.integer :id_type
      t.string :id_number
      t.datetime :valid_from
      t.datetime :valid_until
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :individuals
  end
end
