class CreateDiets < ActiveRecord::Migration
  def change
    drop_table :diets
    create_table :diets do |t|
      t.string :name
    end
  end
end
