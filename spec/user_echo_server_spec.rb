require_relative '../lib/user_echo_server'
require 'spec_helper'

describe UserEchoServer do

  it 'should be an instance of userechoserver' do
    userechoserver = UserEchoServer.new
    userechoserver.should be_an_instance_of UserEchoServer
  end

  it 'should be an instance of commandlineview' do
    output = CommandLineView.new
    output.should be_an_instance_of CommandLineView
  end

  it 'prints out the welcome message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    message = view.welcome_message
    expect(output.string).to eq("Welcome\n")
  end

  it 'prints out the instruction message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    message = view.instruction_message
    expect(output.string).to eq("Enter anything or exit to finish:\n")
  end

  it 'prints out user\'s input with new line - 1 word' do
    output = StringIO.new
    view = CommandLineView.new(output)
    user_view = view.echo_user_line("hello")
    expect(output.string).to eq("hello\n")
  end

  it 'prints out user\'s input with new line - 2 words' do
    output = StringIO.new
    view = CommandLineView.new(output)
    user_view = view.echo_user_line("hello linh")
    expect(output.string).to eq("hello linh\n")
  end

  it 'prints out the goodbye message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    message = view.goodbye_message
    expect(output.string).to eq("Goodbye!\n")
  end

  it 'should be an instance of userechoinput' do
    userechoinput = UserEchoInput.new
    userechoinput.should be_an_instance_of UserEchoInput
  end

  it 'takes user\'s input - 1 word' do
    input = StringIO.new("hello\n")
    user_echo_input = UserEchoInput.new(input)
    line = user_echo_input.read_line
    expect(line).to eq("hello")
  end
end
