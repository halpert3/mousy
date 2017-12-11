class Squeak < ApplicationRecord
  belongs_to :user
  validates :message, presence: true, length: { maximum: 140, too_long: 'Squeaks are limited to 140 characters. Edit it down.'}
end


# == Schema Information
#
# Table name: squeaks
#
#  id         :integer          not null, primary key
#  message    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_squeaks_on_user_id  (user_id)
#

