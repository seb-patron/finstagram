class Post < ApplicationRecord
     has_one_attached :image #each post has an attached image
     belongs_to :user # each post belongs to a user
     validates :user_id, presence: true
     # make sure uploaded file is an image, and is not larger than 500kb
     validates :image, file_size: { less_than_or_equal_to: 500.kilobytes }, file_content_type: { allow: ['image/jpeg', 'image/png'] }

     def image_url
      if self.image.attached?
        Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path: true)
      else
        nil
      end
    end
end
