#And and or as literally and and or
defmodule Test do
  def comp_age do
    age=19
    IO.puts "#{age>18 and age<90}"
    IO.puts "#{age>18 or age<90}"
  end
end
Test.comp_age()

#Decision making statements
defmodule Decider do
  def main do
    age=19;
    make_decision(age)
  end
  def make_decision(age) do
    if age>18 do
      IO.puts("The age is greater than 18")
    else
      IO.puts("The age is smaller than or equal to 18")
    end

    unless age===18 do
       IO.puts("Your age is 18")
    else
      IO.puts("Your age is not 18")
    end

    cond do
      age>18->IO.puts("The age is greater than 18")
      age<18->IO.puts("The age is less than 18")
      age===18->IO.puts("The age is 18")
    end
    case 2 do
      1->IO.puts("Entered 1")
      2->IO.puts("Entered 2")
      _->IO.puts("default")
    end
  end
end
Decider.main()

##Using ternary operators
defmodule Test99 do
  def ter_application do
    age=19
    if age>18?, do : IO.puts("You can vote") , else : IO.puts("You cannot vote")
  end
end
