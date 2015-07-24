class Course < ActiveRecord::Base
    validates :name, presence: true, length: {minimum: 2, maximum: 25} 
    has_many :recipe_courses
    has_many :recipes, through: :recipe_courses
end