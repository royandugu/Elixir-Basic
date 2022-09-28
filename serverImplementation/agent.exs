#Realizing the cart system once again but this time using agents
defmodule Cart do
  use Agent
  def add_item(item) do
    Agent.update(__MODULE__ , fn state->[item | state] end)
  end
  def remove_item(item) do
    Agent.update(__MODULE__ , fn state-> Enum.reject(state, fn k-> k === item end) end)
  end
  def view_cart() do
    IO.inspect(Agent.get(__MODULE__ , & &1))
  end
  def exit_cart() do
    Agent.stop(__MODULE__)
  end
end

defmodule TestSys do
  def start_agent do
    Agent.start_link(fn -> [] end , name: Cart)
    main()
  end
  def main do
    {value, _symbol} = IO.gets("1. Add item into the cart\n2. Remove item form the cart\n3. View your cart\n4. Stop\n") |> Integer.parse()
    user_func(value)
  end
  def user_func(value) do
    if value===1 do
      item=IO.gets("Which item do you want to enter \n ")
      Cart.add_item(item)
      main()
    end
    if value===2 do
      item=IO.gets("Which item do you want to remove \n ")
      Cart.remove_item(item)
      main()
    end
    if value===3 do
      Cart.view_cart
      main()
    end
    if value===4 do
      IO.inspect(Cart.exit_cart)
    end
  end
end
TestSys.start_agent()
