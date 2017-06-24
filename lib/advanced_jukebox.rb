#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/Zoey/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
    puts "I accept the following commands:
    - help: displays this help message
    - list: displays a list of songs you can play
    - play: lets you choose a song to play
    - exit: exits this program"
end



def list(my_songs)
    names = my_songs.keys
    names.each_with_index |name, index|
        puts "#{index + 1}. #{name}"
    end
end


def play(my_songs)
    #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name:"
  response == gets.chomp
    if my_songs.keys.include?(response)
      puts "Playing #{response}"
      system "open #{my_songs[response]}"
      
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
    help
    puts "Please enter a command:"
    response = gets.chomp
    
    until response == "exit"
        if response == "list"
            list(songs)
            response == gets.chomp
            elsif response == "play"
            play(songs)
            response == gets.chomp
            elsif response == "help"
            help
            response == gets.chomp
        end
    end
    exit_jukebox
end








