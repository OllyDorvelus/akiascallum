class Photo < ActiveRecord::Base
  belongs_to :user
  validates :caption, presence: true, length: { minimum: 1, maximum: 200}
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true
  
  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end
end
