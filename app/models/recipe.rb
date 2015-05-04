class Recipe < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4, maximum: 100 }
  validates :summary, presence: true, length: { minimum: 10, maximum: 150 }
  validates :description, presence: true, length: { minimum: 50, maximum: 800 }
end

