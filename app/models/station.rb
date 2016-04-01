class Station < ActiveRecord::Base
  has_many :reviews

  def self.search_n(search)
    where("name LIKE ?", "%#{search}%")
  end

   def self.search_l(search)
    where("line LIKE ?", "%#{search}%")
  end
end
