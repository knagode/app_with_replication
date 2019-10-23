class MyModel < ApplicationRecord
  connects_to database: { writing: :primary, reading: :follower } 
end
