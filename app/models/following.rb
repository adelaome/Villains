class Following < ApplicationRecord
   belongs_to :villain, :class_name => 'Villains'
   belongs_to :follower, :class_name => 'Villains'
end
