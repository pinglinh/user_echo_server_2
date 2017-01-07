describe UserEchoInput do
  it 'takes user\'s input - 0 word' do
    input = StringIO.new("\n")
    user_echo_input = UserEchoInput.new(input)
    line = user_echo_input.read_line
    expect(line).to eq("")
  end

  it 'takes user\'s input - 1 word' do
    input = StringIO.new("hello\n")
    user_echo_input = UserEchoInput.new(input)
    line = user_echo_input.read_line
    expect(line).to eq("hello")
  end
end
