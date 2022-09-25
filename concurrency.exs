#checking out the processes
defmodule Parent do
  def check_process do
    IO.puts("Checking process")
    spawn(fn() ->loop(20,10) end)
    spawn(fn() ->loop(30,20) end)
  end
  def loop(0,_), do: nil
  def loop(max,min) do
    if max<min do
      loop(0,min)
    else
      IO.puts(min)
      loop(max,min+1)
    end
  end
end
Parent.check_process()


##Send and recieve
defmodule MessagePasser do
  def pass_message do
    send(self(),{:name, "Royan"})
    receive do
      {:name, value} -> IO.puts("Welcome home #{value}")
        # code
    after
      500->IO.puts("Time out")
    end

  end
end
MessagePasser.pass_message()
