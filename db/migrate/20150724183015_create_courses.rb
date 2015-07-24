class CreateCourses < ActiveRecord::Migration
  def change
    drop_table :courses
    create_table :courses do |t|
      t.string :name
    end
  end
end
