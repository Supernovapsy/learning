def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice =~ (/^\d+$/)
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  case how_much
  when 0
    puts "Wow, you're a true adventurer."
  else
    unless how_much > 50
      puts "You win!"
      exit(0)
    else
      dead("You greedy bastard!")
    end
  end

end

def dead(why)
    puts why + " good job!"
end

BEGIN { puts "hi" }
END { puts "bye" }

alias gem_room gold_room

gem_room

undef gold_room

gem_room # This still works!

begin
  gold_room
  # gem_room
rescue
  puts "gold_room is no longer recognized as a function"
ensure
  puts "However as you can see gem_room has been, even though it was" +
        " at first an alias."
end