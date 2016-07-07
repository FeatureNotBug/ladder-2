def choose_random(arr)
  array.sample #yes this is simple but I'll leave it here for now
end

# try to choose w/no repeats?
def generate_combos(n, item1, item2, item3)
  used = []
  for i in 0..n do
    while used.include?(chose1 = choose_random(item1))
    while used.include?(chose2 = choose_random(item2))
    while used.include?(chose3 = choose_random(item3))
    used.push(chose1)
    used.push(chose2)
    used.push(chose3)
  end
end
