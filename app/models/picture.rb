class Picture < ActiveRecord::Base
  belongs_to :album

  has_attached_file :image, styles: { 
  	small: "64x64", 
  	med: "200x200", 
  	large: "400x400" }

  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" }

end
