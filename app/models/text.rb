class Text < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }

	validates :title, presence: true
	validates :body, presence: true
	validates :user_id, presence: true
	validates_attachment :image, content_type: { content_type: ['image/jpeg','image/jpg','image/png','image/gif']},
															size: { less_than: 10.megabytes }
end
