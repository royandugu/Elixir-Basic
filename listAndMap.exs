#List of functions
addFive=fn n->n+5 end
addTen=&(&1+10)

[a,b,c]=[1,2,3]
IO.puts(a)
IO.puts(b|>addFive.())
IO.puts(c|>addTen.());


#Application of map
_map=%{a=>10,b=>5}
IO.puts(a)
IO.puts(b|>addTen.())
