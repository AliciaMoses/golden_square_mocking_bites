class StringRepeater
    def initialize(terminal)
        @terminal = terminal 
    end
    def run
        @terminal.puts "Hello. I will repeat a string many times."
        @terminal.puts "Please enter a string"
        string = @terminal.gets.chomp
        @terminal.puts "Please enter a number of repeats"
        repeats = @terminal.gets.chomp.to_i
        @terminal.puts "Here is your result:"
        @terminal.puts  "#{string*repeats}"
    end
end
