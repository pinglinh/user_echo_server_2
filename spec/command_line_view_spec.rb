describe CommandLineView do

  let(:output) { StringIO.new }
  let(:view) { CommandLineView.new(output) }

  it 'prints out the welcome message' do
    view.welcome_message
    expect(output.string).to eq("Welcome!\n")
  end

  it 'prints out the instruction message' do
    view.instruction_message
    expect(output.string).to eq("Enter anything or exit to finish:\n")
  end

  it 'prints out user\'s input with new line - 1 word' do
    view.echo_user_line("hello")
    expect(output.string).to eq("hello\n")
  end

  it 'prints out user\'s input with new line - 2 words' do
    view.echo_user_line("hello linh")
    expect(output.string).to eq("hello linh\n")
  end

  it 'prints out the goodbye message' do
    view.goodbye_message
    expect(output.string).to eq("Goodbye!\n")
  end

end
