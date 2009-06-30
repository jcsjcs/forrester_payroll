class CreatePayGrades < ActiveRecord::Migration
  def self.up
    create_table :pay_grades do |t|
      t.string :pay_grade, :null => false
      t.string :description, :null => true
      t.timestamp :valid_from, :null => false
      t.timestamp :valid_until, :null => false
      t.timestamps
      t.string :created_by, :null => false
      t.string :updated_by, :null => true
    end
    add_index :pay_grades, [:pay_grade, :valid_from], :unique => true
  end

  def self.down
    drop_table :pay_grades
  end
end
