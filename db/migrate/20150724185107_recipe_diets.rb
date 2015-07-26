class RecipeDiets < ActiveRecord::Migration
  def change
    create_table :recipe_diets do |t|
      t.integer :diet_id, :recipe_id
    end
  end
end
