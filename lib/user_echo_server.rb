require_relative 'command_line_view'
require_relative 'user_echo_input'

class UserEchoServer
EXIT = "exit"

  def initialize(input=STDIN, output=STDOUT)
    @input = UserEchoInput.new
    @output = CommandLineView.new
  end

  def start
    @output.welcome_message
    @output.instruction_message
    @user_input = @input.read_line
    until exit_entered? == true do
      @output.echo_user_line(@user_input)
      @user_input = @input.read_line
    end
    @output.goodbye_message
  end

  private

  def exit_entered?
    @user_input == EXIT
  end
end
