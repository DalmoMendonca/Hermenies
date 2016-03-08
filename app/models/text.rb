class Text < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	belongs_to :user
	validates :user_id, presence: true
end
