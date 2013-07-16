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
end