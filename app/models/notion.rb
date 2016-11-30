# == Schema Information
#
# Table name: notions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notion < ApplicationRecord
  has_and_belongs_to_many :articles
  has_many :comments
  has_attached_file :photo

  validates_attachment_content_type :photo, content_type: /^image\/.+/i



end
