# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  titre              :string
#  content            :text
#  date               :date
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  audio_file_name    :string
#  audio_content_type :string
#  audio_file_size    :integer
#  audio_updated_at   :datetime
#  video_file_name    :string
#  video_content_type :string
#  video_file_size    :integer
#  video_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Article < ApplicationRecord
  has_and_belongs_to_many :notions

  validates :titre,  presence: true
  validates :content,  presence: true
  validates :year,  presence: true
  has_attached_file :photo
  has_attached_file :video
  has_attached_file :audio

  validates_attachment_content_type :photo, content_type:/^image\/.+/i
  validates_attachment_content_type :audio, content_type: /^audio\/.+/i
  validates_attachment_content_type :video, content_type: /^video\/.+/i



end
