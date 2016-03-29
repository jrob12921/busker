class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :station

  has_many :comments, dependent: :destroy
end
