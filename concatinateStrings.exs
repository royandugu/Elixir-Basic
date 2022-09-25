defmodule Concatinator do
  def concat_string(name) do
    n=name
    longer_str=n <> " " <> "is your dad"
    IO.puts(longer_str)
  end
end
Concatinator.concat_string("Royan")
