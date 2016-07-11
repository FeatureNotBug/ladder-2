class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

=begin
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

    @messages_arr = []
    File.open("app/assets/messages.txt", "r").each_line do |m|
      @messages_arr << m
    end

  end
=end

end
