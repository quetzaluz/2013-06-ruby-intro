require './src/queue.rb'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "initializes empty" do
    @queue.length.should == 0
  end

  describe "#add" do
    it "should add the first item correctly" do
      @queue.add('hi')
      @queue.length.should == 1
    end

    it "should add other items correctly" do 
      @queue.add('first item')
      @queue.add('second item')
      @queue.length.should == 2
    end
  end

  describe "#remove" do
    it "should remove an item" do
      @queue.add('test')
      @queue.length.should == 1
      @queue.remove
      @queue.length.should == 0
    end
    it "should remove items in first-in-first-out order" do
      @queue.add('first')
      @queue.add('second')
      @queue.remove.should == 'first'
      @queue.remove.should == 'second'
    end
  end
  describe "#contains" do
    it "should return true if an item in the collection has passed in value" do
      @queue.add('real_value')
      @queue.contains('real_value').should == true
      @queue.contains('fake_value').should == false
    end
  end
end
