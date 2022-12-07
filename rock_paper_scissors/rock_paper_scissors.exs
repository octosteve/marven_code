# Write rock paper scissors game
# 1. User chooses rock, paper, or scissors
# 2. Computer chooses rock, paper, or scissors
# 3. Compare user and computer choices
# 4. Display winner

#IO.puts "HELLO MARVEN!"
#IO.puts "Bye MARVEN"

#name = IO.gets("What's your name?")
#
#IO.puts(String.reverse(name))
#
#name |> String.upcase |> IO.puts

IO.puts "Hello, welcome Marven to rock 🪨 paper 🧻 scissors 🎥 land"
choice = IO.gets("Choose between (r)ock, (p)aper, or (s)cissors: ") |> String.trim
# Add timeout to remind player what their choices are.
# Interface should talk
IO.puts("You chose #{choice}!")