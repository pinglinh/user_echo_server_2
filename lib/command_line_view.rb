class CommandLineView
  def initialize(output=STDOUT)
    @output = output
  end

  def welcome_message
    @output.puts "Welcome!"
  end

  def instruction_message
    @output.puts "Enter anything or exit to finish:"
  end

  def echo_user_line(line)
    @output.puts line
  end

  def goodbye_message
    @output.puts "Goodbye!"
  end
end
