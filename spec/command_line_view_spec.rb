require 'spec_helper'

describe CommandLineView do

it 'prints out the welcome message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    view.welcome_message
    expect(output.string).to eq("Welcome!\n")
  end

  it 'prints out the instruction message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    view.instruction_message
    expect(output.string).to eq("Enter anything or exit to finish:\n")
  end

  it 'prints out user\'s input with new line - 1 word' do
    output = StringIO.new
    view = CommandLineView.new(output)
    view.echo_user_line("hello")
    expect(output.string).to eq("hello\n")
  end

  it 'prints out user\'s input with new line - 2 words' do
    output = StringIO.new
    view = CommandLineView.new(output)
    view.echo_user_line("hello linh")
    expect(output.string).to eq("hello linh\n")
  end

  it 'prints out the goodbye message' do
    output = StringIO.new
    view = CommandLineView.new(output)
    view.goodbye_message
    expect(output.string).to eq("Goodbye!\n")
  end

end
