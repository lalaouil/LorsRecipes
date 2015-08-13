class Recipe < ActiveRecord::Base
  belongs_to :chef
  has_many :likes, dependent: :destroy
  has_many :recipe_diets, dependent: :destroy
  has_many :diets, through: :recipe_diets
  has_many :recipe_courses, dependent: :destroy
  has_many :courses, through: :recipe_courses
  validates :chef_id, presence: true
  validates :name, presence: true, length: { minimum: 4, maximum: 100 }
  validates :summary, presence: true, length: { minimum: 10, maximum: 150 }
  validates :description, presence: true, length: { minimum: 50, maximum: 1800 }
  mount_uploader :picture, PictureUploader
  validate :picture_size
  default_scope -> { order(updated_at: :desc) }
  
  def thumbs_up_total
    self.likes.where(like: true).size
  end
  
  def thumbs_down_total
    self.likes.where(like: false).size
  end
  
  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture,'should be less than 5MB')
      end
    end
end

