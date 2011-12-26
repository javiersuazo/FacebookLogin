class Collect < ActiveRecord::Base
belongs_to :user
has_many :pictures, :dependent => :destroy
accepts_nested_attributes_for :pictures , :allow_destroy => true
validates_presence_of :titulo
end
