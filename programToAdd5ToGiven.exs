addFive=fn n->n+5 end;
IO.puts(23|>addFive.());

# We can also use the shorthand method of using &
addTen=&(&1+10);
IO.puts(10|>addTen.());
