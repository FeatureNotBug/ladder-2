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

  def triplet_included_in(test_triplet, array_of_triplets)
    array_of_triplets.each do |triplet|
      if triplet.equal_to(test_triplet)
        return true
      else
        return false
      end
    end
  end

  def choose_random(arr)
    array.sample #yes this is simple but I'll leave it here for now
  end

  def make_triplet(arr1, arr2, arr3)
    chose1 = choose_random(arr1)
    chose2 = choose_random(arr2)
    chose3 = choose_random(arr3)
    triplet = Triplet.new(chose1, chose2, chose3)
    return triplet
  end

  # try to choose w/no exact triplet repeats?
  def generate_combos(n, item1, item2, item3, u1, u2, u3)
    used = []
    success = 0
    while (success < n)
      new_triplet = make_triplet(item1, item2, item3)
      if (triplet_included(new_triplet, used))
        # do nothing
      else
        success += 1
        used.push(new_triplet)
      end
    end
  end

  before_filter :set_arrays
  def set_arrays
    @user_triplet = Triplet.new() #make it accessible to form and change accordingly?
    @audience_arr = []
    File.open("app/assets/audiences.txt", "r").each_line do |a|
      @audience_arr << a.chomp
    end

    @identity_arr = []
    File.open("app/assets/identities.txt", "r").each_line do |i|
      @identity_arr << i.chomp
    end

    @message_arr = []
    File.open("app/assets/messages.txt", "r").each_line do |m|
      @message_arr << m.chomp
    end

  end

end
