class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable #:recoverable, 

  has_many :texts
  has_attached_file :image

	validates_attachment :image, content_type: { content_type: ['image/jpeg','image/jpg','image/png','image/gif']},
															size: { less_than: 10.megabytes }
end
