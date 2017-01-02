require_relative '../lib/user_echo_server'
require_relative '../lib/command_line_view'
require 'spec_helper'

describe UserEchoServer do

  let(:output) { CommandLineView.new }
  let(:userechoserver) { UserEchoServer.new(output) }

  it 'should be an instance of userechoserver' do
    userechoserver.should be_an_instance_of UserEchoServer
  end

  it 'should be an instance of commandlineview' do
    output.should be_an_instance_of CommandLineView
  end

end
