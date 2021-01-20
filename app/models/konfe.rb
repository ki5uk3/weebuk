class Konfe < ApplicationRecord
 

 belongs_to :user
 validates :user_id, :uniqueness => { :scope => :user_id,
    :message => "1 Entry Per User " }
end


