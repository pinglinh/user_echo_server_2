require 'command_line_view'

class UserEchoServer

  def initialize(output=STDOUT)

    @output = CommandLineView.new
  end

end
