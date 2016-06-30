class Campaign < ActiveRecord::Base
  attr_accessor :name
  def new(attributes={})
    @name = attributes[:name]
  end
end
