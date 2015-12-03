class User < ActiveRecord::Base
    include Gravtastic
    gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    mount_uploader :picture, PictureUploader
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 8..40},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:within => 8..40},
                       :allow_blank => true,
                       :on => :update
end
