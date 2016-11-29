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


end
