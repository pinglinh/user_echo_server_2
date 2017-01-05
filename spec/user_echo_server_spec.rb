describe UserEchoServer do
  it 'echoes what the user wrote - 1 word' do
    input = StringIO.new("one\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "Goodbye!\n"
      )
  end

  it 'echoes what the user wrote - 2 words' do
    input = StringIO.new("one\ntwo\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "two\n" +
      "Goodbye!\n"
      )
  end

  it 'echoes what the user wrote - 3 words' do
    input = StringIO.new("one\ntwo\nthree\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "two\n" +
      "three\n" +
      "Goodbye!\n"
      )
  end

  it 'the server stops when user types exit after 0 words' do
    input = StringIO.new("exit\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "Goodbye!\n"
      )
  end

  it 'the server stops when user types exit after 1 word' do
    input = StringIO.new("one\nexit\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "Goodbye!\n"
      )
  end

  it 'the server stops when user types exit after 2 words' do
    input = StringIO.new("one\ntwo\nexit\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "two\n" +
      "Goodbye!\n"
      )
  end

  it 'the server stops when user types exit after 3 words' do
    input = StringIO.new("one\ntwo\nthree\nexit\n")
    output = StringIO.new
    server = UserEchoServer.new(input, output)
    server.start
    expect(output.string).to eq(
      "Welcome!\n" +
      "Enter anything or exit to finish:\n" +
      "one\n" +
      "two\n" +
      "three\n" +
      "Goodbye!\n"
      )
  end

end
