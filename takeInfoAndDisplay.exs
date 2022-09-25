#Elixir program that will take information of the user and display it in console
defmodule User do
  def main() do
    setInfo()
  end
  def setInfo() do
    name=IO.gets("Please Enter your name")|>String.trim()
    roll=IO.gets("Please Enter your roll number")
    getInfo(name,roll)
  end
  def getInfo(name,roll) do
    IO.puts "Welcome to the server #{name} with roll number #{roll}"
  end
end
User.main()
