class RecipeCourses < ActiveRecord::Migration
  def change
     create_table :recipe_courses do |t|
      t.integer :course_id, :recipe_id
    end
  end
end
