#Whenever we make anychanges into our tuple we need to assign a new location for them
defmodule Test do
  def main do
    my_tuple={1,2,:Royan}
    IO.inspect(elem(my_tuple,1))
    {id, roll, name}=my_tuple;
    IO.puts(id)
    IO.puts(roll)
    IO.puts(name)
  end
end
Test.main()


#Functionalities of list like
defmodule Test2 do
  def main do
    list1=[1,2,3,4]
    list2=[4,5,6]
    list3=list1++list2
    list4=list1--list2
    IO.puts(6 in list3)
    IO.inspect(list3)
    IO.inspect(list4)
    [head | tail]=list3
    [head2 | tail2]=list4
    IO.puts(head)
    IO.inspect(tail)
    IO.puts(head2)
    IO.inspect(tail2)
  end
end
Test2.main()


## How can we actually enumerate through a list
defmodule Test990 do
  def traverse_list do
    list=[1,2,3,4]
    Enum.each(list,fn i-> IO.puts(i) end)
    list=["Royan","Arshiya","Dugu"]
    Enum.each(list,fn n->IO.puts(String.length(n)) end)
  end
end
Test990.traverse_list();


##Program to find sum of all elements in a list
