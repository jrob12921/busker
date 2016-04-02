class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station

  has_many :comments, dependent: :destroy

  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/om.jpg" 

  validates_attachment_content_type :avatar, 
    :content_type => /\Aimage\/.*\Z/

  validates :title, presence: {message: "Please include a title!"}, length: { maximum: 16 }

  validates :content, presence: {message: "Please include some content!"}

  validates :rating, :presence => { :if => 'rating.nil?' }

  validates :date_seen, presence: {message: "Please include a valid date!"}

  def self.search_t(search)
    where("title LIKE ?", "%#{search}%")
  end

   def self.search_c(search)
    where("content LIKE ?", "%#{search}%")
  end


end
