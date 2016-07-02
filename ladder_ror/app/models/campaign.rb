class Campaign < ActiveRecord::Base
#  attr_accessor :name
  validates :name, presence: true
 # def new(attributes={})
   # @name = attributes[:name]
  #end
end
