#1. Attributes can be used as multiline commands for writing documentation
defmodule Adder do
  @moduledoc """
    The module Adder consist of add_value function
    which returns the final result of the addition of two values
  """
  def add_value do

  end
end

#2. Attributes can also be used to define constants
defmodule MapBuilder do
  @custom  %{id: 1, name: " Royan "}
  def displayer do
    IO.inspect(@custom)
    %{id: id_value, name: name_value}=%{id: 1 , name: "Royan"}
    IO.inspect(id_value)
  end
end
MapBuilder.displayer()
