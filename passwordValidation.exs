defmodule Sys do
  def main do
    username=IO.gets("Please enter your username")|>String.trim()
    password=IO.gets("Please enter your password")|>String.trim()
    validate_password(username,password)
  end
  def validate_password(username,password) do
    if String.contains?(password, "royan") do
      display_message(username)
    else
      IO.puts("You are not a validated user")
    end
  end
  def display_message(username) do
    IO.puts("#{username} welcome to the server")
  end
end
Sys.main()

#We can check if the value sent can be split into heads and tails in short function overloading
defmodule Sys2 do
  def main do
    list1=["Royan","Arshiya","Dugudugu"]
    name="Babushow"
    display_head(list1)
    display_head(name)
  end
  def display_head([head | tail]) do
    IO.puts("Head is #{head}")
    IO.write("Tail is ")
    Enum.each(tail, fn n->IO.puts(n) end)
  end
  def display_head(name) do
    IO.puts("This is string function")
  end
end
Sys2.main()
