require './src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linked = LinkedList.new
  end

  it "initializes with no head and tail value set" do
    @linked.head.should == nil
    @linked.tail.should == nil
  end

  describe "#add_tail" do
    it "should set the head and tail value to a new node if first value added" do
      @linked.add_tail('test')
      @linked.head.value.should == 'test'
      @linked.tail.value.should == 'test'
    end
  end
  describe "#remove_tail" do
    it "if there is only one value, should remove node, return value, set head and tail to nil" do
      @linked.add_tail('test')
      @linked.head.value.should == 'test'
      @linked.remove_tail.should == 'test'
      @linked.head.should == nil
      @linked.tail.should == nil
    end
    it "should remove the tail and set the tail to the previous value" do
      @linked.add_tail('first')
      @linked.add_tail('second')
      @linked.remove_tail.should == 'second'
      @linked.tail.value == 'first'
      @linked.remove_tail.should == 'first'
    end
  end
end