
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
        puts "You are the code breaker."

        # generate random computer code
        code_to_break = generate_random_code

        for tries in 1..12
            puts tries

            # if code was guessed, exit loop
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


    def make_code
        puts "You are the code maker."

        # generate ai that'll solve the code
    end
end

# start new game
new_game = Mastermind.new
