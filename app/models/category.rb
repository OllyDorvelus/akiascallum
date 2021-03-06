class Category < ActiveRecord::Base
  has_many :blog_categories
  has_many :blogs, through: :blog_categories
  validates :name, presence: true, length: { minimum: 3, maximum: 25}
  validates_uniqueness_of :name
end