# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  birthday   :date
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :notion
end
