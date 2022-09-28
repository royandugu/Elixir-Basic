defmodule Cart do
  use GenServer
  #Client-side
  def add(pid,item) do
    GenServer.cast(pid,{:add, item})
  end
  def remove(pid,item) do
    GenServer.cast(pid,{:remove,item})
  end
  def view(pid) do
    GenServer.call(pid, :view)
  end
  def stop(pid) do
    GenServer.stop(pid)
  end
  #Server-side
  def init(state) do
    {:ok , state}
  end
  def handle_cast({:add , item}, list) do
    new_list=[item | list]
    {:noreply , new_list}
  end
  def handle_cast({:remove , item}, list) do
    new_list=Enum.reject(list, fn n -> n===item end)
    {:noreply , new_list}
  end
  def handle_call(:view , _ , list) do
    {:reply, list, list}
  end
  def terminate(_reason,list) do
    IO.puts("About to terminate")
    IO.inspect(list)
    :ok
  end
end

defmodule Sys do
  def startServer do
    {:ok, pid}=GenServer.start_link(Cart,[],{:timer , 1000})
    main(pid)
  end
  def main(pid) do
    {value,_symbol}=IO.gets("1. Add into cart\n2. Remove from cart\n3. Display the cart\n4. Stop\n")|>Integer.parse
    user_func(value,pid)
  end
  def user_func(value,pid) do
    if value===1 do
      item=IO.gets("Enter the item you want to add\n")|>String.trim()
      Cart.add(pid,item)
      main(pid)
    end
    if value===2 do
      item=IO.gets("Enter the item that you want to delete\n")|>String.trim()
      Cart.remove(pid,item)
      main(pid)
    end
    if value===3 do
      IO.inspect(Cart.view(pid))
      main(pid)
    end
    if value===4 do
      Cart.stop(pid)
    end
  end
end
Sys.startServer()
