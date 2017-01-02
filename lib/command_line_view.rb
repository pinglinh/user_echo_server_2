class CommandLineView
  def initialize(output=STDOUT)
    @output = output
  end

  def welcome_message
    @output.puts "Welcome"
  end

  def instruction_message
    @output.puts "Enter anything or exit to finish:"
  end
end
