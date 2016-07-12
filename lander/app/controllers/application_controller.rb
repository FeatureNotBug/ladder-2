class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

class Triplet
  attr_accessor :element1, :element2, :element3

  def initialize ()
  end

  def init_with(e1, e2, e3)
    @element1 = e1
    @element2 = e2
    @element3 = e3
  end

  def equal_to(triplet2)
    if (triplet2.element1 == @element1 && triplet2.element2 == @element2 && triplet3.element3)
      return true
    else
      return false
    end
  end
end


  before_filter :set_arrays
  def set_arrays
    @user_triplet = Triplet.new() #make it accessible to form and change accordingly?
    @audience_arr = []
    File.open("app/assets/audiences.txt", "r").each_line do |a|
      @audience_arr << a
    end

    @identity_arr = []
    File.open("app/assets/identities.txt", "r").each_line do |i|
      @identity_arr << i
    end

    @message_arr = []
    File.open("app/assets/messages.txt", "r").each_line do |m|
      @message_arr << m
    end

  end

end
