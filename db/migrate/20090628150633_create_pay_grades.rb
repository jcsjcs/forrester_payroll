class CreatePayGrades < ActiveRecord::Migration
  def self.up
    create_table :pay_grades do |t|
      t.integer :pay_grade
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :pay_grades
  end
end
