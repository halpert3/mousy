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

require 'test_helper'

class SqueakTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
