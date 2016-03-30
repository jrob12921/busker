class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station

  has_many :comments, dependent: :destroy

  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/om.jpg" 

  validates_attachment_content_type :avatar, 
    :content_type => /\Aimage\/.*\Z/
end
