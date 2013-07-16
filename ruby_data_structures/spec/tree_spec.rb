require './src/tree.rb'

describe Tree do
  before(:each) do
    @tree = Tree.new('original')
  end

  it "initializes with a value and empty children array" do
    @tree.value.should == 'original'
    @tree.children.should == []
  end

  describe "#add_child" do
    it "should add child tree to parent's children array" do
      @tree.add_child('child1')
      @tree.children[0].value.should == 'child1'
    end

    it "should add multiple children to the same tree" do
      @tree.add_child('child1')
      @tree.add_child('child2')
      @tree.children[0].value.should == 'child1'
      @tree.children[1].value.should == 'child2'
      @tree.children.size.should == 2
    end

    it "should be able to add children to children" do
      @tree.add_child('child1')
      @tree.children[0].add_child('grandchild1')
      @tree.children.size.should == 1
      @tree.children[0].children.size.should == 1
    end
  end
  describe "#contains" do
    it "should return true if a tree has a child with a given value, false if not present" do
      @tree.add_child('real_child')
      @tree.contains('real_child').should == true
      @tree.contains('fake_child').should == false
    end
    it "should recursively search children of children" do
      @tree.add_child('child1')
      @tree.add_child('child2')
      @tree.children[0].add_child('grandchild1')
      @tree.children[1].add_child('grandchild2')
      @tree.children[1].add_child('grandchild3')
      @tree.contains('child2').should == true
      @tree.contains('grandchild3').should == true
      @tree.contains('fake_child').should == false
    end
  end
end