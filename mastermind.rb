
class Mastermind
    def initialize

        # welcome player
        puts "Welcome to Mastermind Game!\n" + 
            "To be the code breaker, enter 1.\n" +
            "To be the code maker, enter 2."; print "> "

        # prompt player for valid input
        while choice = gets.chomp.to_i
            puts; case choice
            when 1
                break_code; break
            when 2
                make_code; break
            else
                print "Invalid input! Please input either 1 or 2 only.\n> "
            end
        end 
    end

    private

    def break_code
        puts "You are the code breaker.\n"

        # generate random computer code
        code_to_break = generate_random_code

        # give player chance to guess the code within no. of tries
        attempt, max_tries = 0, 12

        puts "Guess the #{code_to_break} within #{max_tries} moves.\n" + 
            "Note: You'll be provided with feedback for every incorrect guess you make.\n" + 
            "• '⚫' signifies that you've matched a peg with its exact location against the code.\n" + 
            "• '⚪' signifies that you've matched a peg, but on an incorrect location against the code.\n"

        puts "\nYou may now input your first guess below. Good luck!"
        print "Guess ##{attempt + 1} > "

        while guess = gets.chomp

            puts    # print new line for breaks

            if guess == code_to_break
                if attempt == 0 then puts 'Woah, first try!'
                elsif attempt == 11 then puts "Nice, that's clutch!" end
                puts "Congratulations~ you win!"; break
            else
                attempt += 1
                
                # break immmediately when player spend all his/her moves
                if attempt == max_tries
                    puts "Out of moves~ you lose."; break
                end 
                
                # otherwise, furhter prompt him/her for his/her guess 
                puts "Your guess is wrong~ try again. " + 
                    "(#{max_tries - attempt} move/s left.)"

                # provide feedback along the way
                provide_feedback(guess, code_to_break)
                print "Guess ##{attempt + 1} > "
            end 
        end
    end

    def generate_random_code
        code = ''

        # note: you can change the no. of iterations depending on your code's
        # length preference. moreover, you can also modify the range of numbers
        # the program can freely choose from randomly.
        4.times { code << rand(1..6).to_s }
        
        # return code implicitly
        code
    end

    def provide_feedback(guess, code_to_break)
        # check for every character of 'guess' (for loop || use length of 'code_to_break')
            # if character is exact as w/ exact location vs 'code_to_break'
                # print '⚫ '
                # next (skip loop to next iteration)
            # elsif character has at least one character vs 'code_to_break'
                # print '⚪ '
                # next (skip loop to next iteration)
            # end
        # end
    end

    def make_code
        puts "You are the code maker."

        # generate ai that'll solve the code
    end
end

# start new game
new_game = Mastermind.new
