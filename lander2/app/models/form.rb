class Form < ActiveRecord::Base
  serialize :targets, Array 
  serialize :types, Array
  serialize :msgs, Array
#  attr_accessor :targets, :types, :msgs 

=begin
  def initialize
    @targets = []
    @types = []
    @msgs = []
  end
=end
end
