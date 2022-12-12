# What does this code do?
IO.puts("Hello")
# Puts it to the screen
name = IO.gets("What's your name? ") |> String.trim()
# Gets stuff from the screen

if name == "Marven" do
  IO.puts("Hello Marven")
else
  IO.puts("I don't want to talk to you")
end

# Variables
# Arithmetic

# Module functions

defmodule Marven do
  def pizza_coocoo(name) do
    name
    |> String.reverse
    |> String.upcase
  end
end
