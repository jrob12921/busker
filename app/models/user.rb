class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy



  before_create :make_profile

  private

  def make_profile
    Profile.create(user_id: self.id)
  end
end
