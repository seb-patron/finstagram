class Post < ApplicationRecord
     has_one_attached :image #each post has an attached image
     belongs_to :user # each post belongs to a user
     # make sure uploaded file is an image, and is not larger than 500kb
     validates :user_id, presence :true
     validates :image, file_size: { less_than_or_equal_to: 500.kilobytes }, file_content_type: { allow: ['image/jpeg', 'image/png'] }
end
