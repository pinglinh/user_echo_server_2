require 'command_line_view'
require 'user_echo_input'

class UserEchoServer

  def initialize(input=STDIN, output=STDOUT)
    @input = UserEchoInput.new
    @output = CommandLineView.new
  end

  def start

  end
end
