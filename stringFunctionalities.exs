#Program to check if two strings are equal
defmodule Checker do
  def check_alike do
    string1="Royan"
    string2="Sakin"
    IO.puts("Two strings are #{string1===string2}")
  end
end
Checker.check_alike()

#Program to print length of a string
defmodule Calculator do
  def disp_length do
    string1="royan"
    IO.puts(String.length(string1))
  end
end
Calculator.disp_length()

#Program to find the first character of the string, a character at a certain index and a substring
defmodule TestTwo do
  def main do
    string1="HelloWorld"
    get_first(string1)
    get_at(string1,4)
    get_sub(string1,2,6)
  end
  def get_first(string1) do
    IO.puts(String.first(string1))
  end
  def get_at(string1,a) do
    IO.puts(String.at(string1,a))
  end
  def get_sub(string1,a,b) do
    IO.puts(String.slice(string1,a,b))
  end
end
TestTwo.main()


#Check if our string contains hello
defmodule SChecker do
  def main do
    string1="hello world"
    check_string(string1)
  end
  def check_string(string1) do
    IO.puts(String.contains?(string1,"hello"))
  end
end
SChecker.main()

#Further we can uppercase, lowercase, reverse, front capital and most importantly split on the basis of a space or anything like that
defmodule Test2 do
  def main do
    string1="hello world"
    change_upper(string1)
    change_lower(string1)
    reverse_string(string1)
    front_caps(string1)
    split_string(string1)
  end
  def change_upper(string1) do
    IO.puts(String.upcase(string1))
  end
  def change_lower(string1) do
    IO.puts(String.downcase(string1))
  end
  def reverse_string(string1) do
    IO.puts(String.reverse(string1))
  end
  def front_caps(string1) do
    IO.puts(String.capitalize(string1))
  end
  def split_string(string1) do
    IO.inspect(String.split(string1,""))
  end
end
Test2.main()
