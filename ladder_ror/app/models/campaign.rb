class Campaign < ActiveRecord::Base
  belongs_to :user
#  attr_accessor :name
  validates :name, presence: true
 # def new(attributes={})
   # @name = attributes[:name]
  #end
end
