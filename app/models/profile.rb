class Profile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/buddha.jpg" 

  validates_attachment_content_type :avatar, 
    :content_type => /\Aimage\/.*\Z/

  def full_name
    "#{self.fname} #{self.lname}"
  end

  def self.search_u(search)
    where("username LIKE ?", "%#{search}%")
  end

   def self.search_e(search)
    where("email LIKE ?", "%#{search}%")
  end

   def self.search_f(search)
    where("fname LIKE ?", "%#{search}%")
  end

   def self.search_l(search)
    where("lname LIKE ?", "%#{search}%")
  end

end
