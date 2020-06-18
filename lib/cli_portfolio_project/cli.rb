class Cli

    def run
        puts "Hello and welcome to the magical Harry Potter API.  
        I'm sure you're here because wikipedia is down, and you absolutely MUST have access to the details about your favorite characters."
        puts "Please sit still as we take out the sorting hat, put it on our head, and dive into the wonderful world of Harry Potter."
        API.get_characters
        "Thank you for waiting, we now have access to all the wisdom the sorting hat has to offer."
        print_main_menu
    end

    def print_main_menu
        puts "Press 1 to list out characters"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        user_input = gets.strip
        
        if user_input == "1"
            print_characters
        elsif user_input == "exit"
            goodbye
            exit
        else
            invalid_input
            print_main_menu
        end
    end

    def goodbye
        puts "You have arrived at Platform 9 3/4, feel free to hop back on the Hogwarts Express whenever you want!"
    end

    def invalid_input
        puts "In the best Hermione impersonation 'You're doing it wrong.' Invalid command, please try again."
    end

    def print_characters
        puts ""
        puts "~~~~~~~~~~~~~~"
        Character.all.each.with_index(1) do |character, index|
            puts "Character #{index}."
            puts "Character: #{character.name}"
            # binding.pry
        end
        get_user_character
    end

    def get_user_character
        puts "Type either the name of the character or their # to get more information about that character, or exit to return to the entrance hall."
        user_input = gets.strip
        if user_input == "exit"
                puts "Apparating back to the Entrance Hall (don't worry we lifted the enchantment). Tuck your arms and legs."
                print_main_menu
        end

        found_character = Character.all.select.with_index(1) {|character, index| character.name == user_input || index == user_input}
        binding.pry
        if found_character.length == 0
                invalid_character_input
                get_user_character        
                
        else
               current_character = found_character[0]
                puts "Name: #{current_character.name}"
                puts "House: #{current_character.house}"
                puts "House = #{current_character.house}"
                puts "Is this character a member of the Order of the Phoenix? #{current_character.orderOfThePhoenix}"
                puts "If this character is an animagus, what animal does her form take? #{current_character.animagus}"
              
                puts "~~~~~~~~~~~"
                get_user_character
        end
            # if user_input == "#{character.name}"
            #     # print "hello world"
            #     puts "if"
            # elsif user_input == "exit"
            #     # puts "Apparating back to the Entrance Hall (don't worry we lifted the enchantment). Tuck your arms and legs."
            #     # print_main_menu
            #     puts "elsif"
            # else
            #     # invalid_character_input
            #     # get_user_character
            #     puts "else"
            # end


    end

    def invalid_character_input
        puts "Are you sure that's a real spell?  Well, it's not very good is it.  Please try again."
    end

end