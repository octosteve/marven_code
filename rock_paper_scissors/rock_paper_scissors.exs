# Write rock paper scissors game
# 1. User chooses rock, paper, or scissors
# 2. Computer chooses rock, paper, or scissors
# 3. Compare user and computer choices
# 4. Display winner

# IO.puts "HELLO MARVEN!"
# IO.puts "Bye MARVEN"

# name = IO.gets("What's your name?")
#
# IO.puts(String.reverse(name))
#
# name |> String.upcase |> IO.puts

IO.puts("Hello, welcome Marven to rock 🪨 paper 🧻 scissors 🎥 land")
choice = IO.gets("Choose between (r)ock, (p)aper, or (s)cissors: ") |> String.trim()

human_choice = case choice do
  "r" -> :rock
  "p" -> :paper
  "s" -> :scissors
end

IO.puts("You chose #{human_choice}")

robot_select = fn ->
  [:rock, :paper, :scissors] |> Enum.random()
end

robot_choice = robot_select.()
IO.puts("Robot chose #{robot_choice}")

winner = case {human_choice, robot_choice} do
  {:rock, :rock} -> :tie
  {:rock, :paper} -> :robot
  {:rock, :scissors} -> :human
  {:paper, :rock} -> :human
  {:paper, :paper} -> :tie
  {:paper, :scissors} -> :robot
  {:scissors, :rock} -> :robot
  {:scissors, :paper} -> :human
  {:scissors, :scissors} -> :tie
end

System.cmd("say", ["-v", ~s{Karen}, "You Chose #{human_choice}"])
System.cmd("say", ["-v", ~s{Karen}, "The Robot Chose #{robot_choice}"])
System.cmd("say", ["-v", ~s{Karen}, "The game is over"])
System.cmd("say", ["-v", ~s{Karen}, case winner do
  :human -> "You won"
  :robot -> "The robot won"
  :tie -> "It's a tie"
end])