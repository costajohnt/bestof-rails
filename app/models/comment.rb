# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  post_id    :integer
#

class Comment < ActiveRecord::Base
	has_many :votes
	belongs_to :post, dependent: :destroy
	belongs_to :user
end
