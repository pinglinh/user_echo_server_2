class UserEchoInput
  def initialize(input=STDIN)
    @input = input
  end

  def read_line
    @input.readline.chomp
  end
end
