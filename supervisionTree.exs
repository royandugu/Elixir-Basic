#Program to create a supervision tree of two children
defmodule Root do
  def creator do
    children=[ChildOne,ChildTwo]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
defmodule ChildOne do
  def main do
    IO.puts("I am child one")
    Task.start_link(fn -> Process.sleep(100000) end)
  end

  def child_spec(_) do
    %{
      id: __MODULE__ ,
      start: {__MODULE__ , :main , []},
      name: __MODULE__
    }
  end
end
defmodule ChildTwo do
  def main do
    IO.puts("I am child two")
    Task.start_link(fn -> Process.sleep(100000) end)
  end

  def child_spec(_) do
    %{
      id: __MODULE__ ,
      start: {__MODULE__, :main , []},
      name: __MODULE__
    }
  end
end
Root.creator()
