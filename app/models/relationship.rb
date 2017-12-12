
class Relationship < ApplicationRecord
    belongs_to :user #this is the current user
    belongs_to :friend, class_name: "User" #we're telling them that a friend is just another User
    
end
# == Schema Information
#
# Table name: relationships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  friend_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
