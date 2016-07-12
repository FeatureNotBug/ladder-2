class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :audiences
  attr_accessor :name
  validates :name, presence: true
 # def new(attributes={})
   # @name = attributes[:name]
  #end
end
