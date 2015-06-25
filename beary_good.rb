def run
  10.times do |i|
    puts "    
                                         ."
    sleep(0.1)
  end

  puts "\n\t\t           > You are unable to escape
  \n\t\t\t          What do you do?"
  print "\t\t          **** PICK UP STICK | RUN ****\n" 
  choice = $stdin.gets.chomp
  
    if choice.downcase == "pick up stick"
      stick
    elsif choice.downcase == "run"
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      
      puts "\n\t\t             > You get away safely
      \n"
    else
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      dead("\tYou are scared out of your mind and lost in thought.
    \tHowever; your mind soon starts to race.
    \tYou come up with an ingenious idea that may save you life...
    \tYour brain the explodes.
    \tNo seriously...  
    \tThe bears powerful jaw crushes your skull.")
    end
end


def stick
  10.times do |i|
    puts "                                         ."
    sleep(0.1)
  end
  
  puts "\n\t          > The stick you find looks vaguely familiar\n"
  puts "\n\t\t        What do you do with the stick?"
  stick_power = false
  print "\t\t          **** EXAMINE | THROW ****\n"
    
    while true
      choice = $stdin.gets.chomp
    if choice.downcase == "throw"
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      
      sleep(1.0)
      dead("\n\tYou take a deep breath and throw the stick at the bear
      \tThe bear drops his paws to his side
      \tYou see something that; what looks like a smile on the bears face
      \tThe bear raises his heavy paw
      \tIn a sweeping blow the paw crushes your neck
      \tYour eyes grow heavy and your vision fades to black")
    elsif choice.downcase == "examine" && !stick_power
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      
      puts "\n\tYou notice that this stick is not an ordinary stick.
      \tBut you are hesitant...
      \twhat do you do..."
      stick_power = true
      print "\t\t          **** GO WITH GUT | THROW ****\n"
    elsif choice == "go with gut" && stick_power
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      
      sleep(1.0)
      puts "\n\tYou cast the spell EXPELLIARMUS
      \tA blinding light pierces the bears stomach;
      \tkilling the bear"
    return puts "\tYou live another night
    \n"
    else
      10.times do |i|
        puts "                                         ."
        sleep(0.1)
      end
      puts "\n\t          > Eh.. I didn't quite understand you
      \n"
    end
  end
end
 

def dead(reason)
  puts reason, "\tGood job!"
  puts "\n"
  exit(0)
end

def start_of_game
  system("clear")
  puts "
\t\t      █████╗     ██████╗ ███████╗ █████╗ ██████╗ ██╗   ██╗
\t\t     ██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
\t\t     ███████║    ██████╔╝█████╗  ███████║██████╔╝ ╚████╔╝ 
\t\t     ██╔══██║    ██╔══██╗██╔══╝  ██╔══██║██╔══██╗  ╚██╔╝  
\t\t     ██║  ██║    ██████╔╝███████╗██║  ██║██║  ██║   ██║   
\t\t     ╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝" 
  puts "
       ██████╗  ██████╗  ██████╗ ██████╗     ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗
      ██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗    ████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝
      ██║  ███╗██║   ██║██║   ██║██║  ██║    ██╔██╗ ██║██║██║  ███╗███████║   ██║   
      ██║   ██║██║   ██║██║   ██║██║  ██║    ██║╚██╗██║██║██║   ██║██╔══██║   ██║   
      ╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝    ██║ ╚████║██║╚██████╔╝██║  ██║   ██║   
       ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝     ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝"
  sleep(1.0)
  puts "\n"
  puts "\n\t||  Your eyes are slow to open. Your head is aching,                    ||"
  puts "\t|| and like your vision; your memory is blurred. Silence surrounds you. ||"
  puts "\t|| You are resting against a cool, damp pillow of grass                 ||"
  puts "\t|| You then begin to rise, your legs feel like at given moment;         ||"
  puts "\t|| they could collapse, from the heaviness of the darkness above you.   ||"
  puts "\t|| You place your hand against your forehead. A red nectar              ||\n\t|| continues to pour out of it.                                         ||"
  puts "\t|| Suddenly, a roar pierces the silence that once encompased you.       ||"
  puts "\t|| Behind you is a Grizzly bear, satianic in appearance.                ||\n\t|| It stands against a full moon, so                                    ||"
  puts "\t|| heavenly, one would give their own life to see.                      ||" 
	
  puts "\n\t\t\t          What do you do?"
  print "\t\t          **** PICK UP STICK | RUN ****\n" 
  
  choice = $stdin.gets.chomp

  if choice.downcase == "pick up stick"
    stick
  elsif choice.downcase == "run"
    run
  else
    10.times do |i|
      puts "                                         ."
      sleep(0.1)
    end
    
    sleep(1.0)
    dead("\n\tYou are scared out of your mind and lost in thought.
    \tHowever; your mind soon starts to race.
    \tYou come up with an ingenious idea that may save you life...
    \tYour brain the explodes.
    \tNo seriously...  
    \tThe bears powerful jaw crushes your skull.")
  end
end

start_of_game