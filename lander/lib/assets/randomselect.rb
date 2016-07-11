class Triplet
  attr_accessor :element1, :element2, :element3
  def initialize (e1, e2, e3)
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
 #   chose1 = choose_random(item1)
 #   chose2 = choose_random(item2)
 #   chose3 = choose_random(item3)
 #   new_triplet = Triplet.new(chose1, chose2, chose3)
      new_triplet = make_triplet(item1, item2, item3)
    if (triplet_included(new_triplet, used))
      # do nothing
    else
      success += 1
      used.push(new_triplet)
    end
  end
=begin
  for i in 0..n do
    while used.include?(chose1 = choose_random(item1))
    while used.include?(chose2 = choose_random(item2))
    while used.include?(chose3 = choose_random(item3))
    used.push(chose1)
    used.push(chose2)
    used.push(chose3)
  end
=end
end
