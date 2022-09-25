#Recursion to find the factorial of a given number
# defmodule SusSys do
#   def main do
#     a=10
#     result=fact_calc(a)
#     IO.puts(result)
#   end
#   def fact_calc(a) do
#     if a<=1 do
#       1
#     else
#       result=a*fact_calc(a-1)
#       result
#     end
#   end
# end
# SusSys.main()


##Find the sum of elements present in a list
defmodule Test do
  def main do
    list=[1,2,3,4]
    find_sum(list)|>IO.puts()
  end
  def find_sum([]), do: 0 #single line
  def find_sum([h | t]), do: h+find_sum(t);
end
Test.main()
