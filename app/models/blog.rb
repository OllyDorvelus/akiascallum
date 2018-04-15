class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :blog_categories
  has_many :categories, through: :blog_categories
  validates :title, presence: true, length: { minimum: 5, maximum: 30 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { minimum: 10, maximum: 50000}
  validates :user_id, presence: true
  mount_uploader :picture, PictureUploader
end