class Contact < ApplicationRecord
  # has_attached_file :avatar, styles: { thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :avatar
    # styles: lambda { |a| a.is_image? ? {:small => "x200>"}  : {:thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10}}},
    # processors: lambda { |a| a.is_video? ? [ :ffmpeg ] : [ :thumbnail ] }
  validates_attachment_presence :avatar
  # validates :avatar, attachment_presence: true
  # validates_attachment_content_type :video, :content_type => ['application/x-shockwave-flash', 'application/x-shockwave-flash', 'application/flv', 'video/x-flv']
  do_not_validate_attachment_file_type :avatar
end
