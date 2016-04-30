class CreateInstructorSections < ActiveRecord::Migration
  def change
    create_table :instructor_sections do |t|

      t.timestamps
    end
  end
end
