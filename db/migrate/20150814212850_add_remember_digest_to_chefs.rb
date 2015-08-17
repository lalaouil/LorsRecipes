class AddRememberDigestToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :remember_digest, :string
  end
end
