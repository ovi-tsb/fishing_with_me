class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  acts_as_votable


  validates :title,:article_body, presence: true
  has_attached_file :photo, :styles => {:small => "600X600>"},
      :url => "/assets/:basename.:extension",
      :path => ":rails_root/app/assets/images/:basename.:extension"

      validates_attachment_presence :photo
      validates_attachment_content_type :photo, content_type: ["image/jpeg", "image/png"]
      validates_attachment_size :photo, :less_than =>5.megabytes
end
