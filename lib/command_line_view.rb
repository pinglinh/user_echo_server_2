class CommandLineView
  def initialize(output=STDOUT)
    @output = output
  end

  def welcome_message
    @output.puts "Welcome"
  end
end
