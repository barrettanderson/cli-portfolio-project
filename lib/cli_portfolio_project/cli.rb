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
        end
    end

end