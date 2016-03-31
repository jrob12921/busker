class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station

  has_many :comments, dependent: :destroy

  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/om.jpg" 

  validates_attachment_content_type :avatar, 
    :content_type => /\Aimage\/.*\Z/

  validates :title, presence: {message: "Please include a title!"}

  validates :content, presence: {message: "Please include some content!"}

  validates :rating, presence: {message: "Please include a rating!"}

  validates :date_seen, presence: {message: "Please include a valid date!"}

end
