require './src/stack.rb'

describe Stack do
  before(:each) do
    @stack = Stack.new
  end

  it "initializes empty" do
    @stack.length.should == 0
  end

  describe "#add" do
  	it "should add the first item correctly" do
     	@stack.add('hi')
    	@stack.length.should == 1
    end

    it "should add other items correctly" do 
    	@stack.add('first item')
    	@stack.add('second item')
    	@stack.length.should == 2
    end
  end

  describe "#remove" do
  	it "should remove items" do
  		@stack.add('first item')
  		@stack.length.should == 1
  		@stack.remove
  		@stack.length.should == 0
  	end

  	it "should remove the last item" do
  		@stack.add('first item')
  		@stack.add('second item')
  		@stack.remove.should == 'second item'
  		@stack.remove.should == 'first item'
  	end
  end

  describe "#contains" do
    it "should return true if an item in the collection has passed in value" do
      @stack.add('real_value')
      @stack.contains('real_value').should == true
      @stack.contains('fake_value').should == false
    end
  end
end