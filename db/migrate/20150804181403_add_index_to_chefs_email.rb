class AddIndexToChefsEmail < ActiveRecord::Migration
  def change
        add_index :chefs, :email, unique: true
  end
end
