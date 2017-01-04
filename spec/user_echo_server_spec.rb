require 'spec_helper'

describe UserEchoServer do

  it 'echoes what the user wrote' do
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
end
