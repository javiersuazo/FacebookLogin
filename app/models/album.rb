class Album < ActiveRecord::Base
 
validates_presence_of :titulo
has_attached_file :photo ,:path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"

end
