#Program to realize a little more complex supervision tree
defmodule Commoner do
  def get_map(module) do
    %{
      id: module,
      start: {module , :main , []},
      name: module
    }
  end
end

defmodule Root do
  def creator do
    children=[
      ChildOne,
      ChildTwo,
      ChildThree
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
defmodule ChildOne do
  def main do
    children=[
      ChildOneOne,
      ChildOneTwo
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
    Task.start_link(fn -> Process.sleep(10000) end)
  end

  def child_spec(_) do
    Commoner.get_map(__MODULE__)
  end
end
defmodule ChildTwo do
  def main do
    IO.puts("Hello I am child two")
    Task.start_link(fn -> Process.sleep(10000) end)
  end

  def child_spec(_) do
    Commoner.get_map(__MODULE__)
  end
end
defmodule ChildThree do
  def main do
    IO.puts("Hello I am the child three")
    Task.start_link(fn -> Process.sleep(10000) end)
  end

  def child_spec(_) do
    Commoner.get_map(__MODULE__)
  end
end
defmodule ChildOneOne do
  def main do
    IO.puts("Hello I am child one one ")
    Task.start_link(fn-> Process.sleep(10000) end)
  end

  def child_spec(_) do
    Commoner.get_map(__MODULE__)
  end
end
defmodule ChildOneTwo do
  def main do
    IO.puts("Hello I am child one two")
    Task.start_link(fn->Process.sleep(100000) end)
  end

  def child_spec(_) do
    Commoner.get_map(__MODULE__)
  end
end
Root.creator()
