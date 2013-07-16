require './src/queue.rb'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "initializes empty" do
    @queue.length.should == 0
  end
end
