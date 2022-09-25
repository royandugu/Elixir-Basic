defmodule Sys do
  def mapping do
    map1=%{world: "Hello",canit: "Yamete"}
    map2=%{royan: "dugu",hello: "world"}
    map3=%{0=>"Hi",1=>"Hello"}
    IO.puts(map1.world)
    IO.puts(map3[1])
  end
end
Sys.mapping()
