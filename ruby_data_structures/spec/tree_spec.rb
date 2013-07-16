require './src/tree.rb'

describe Tree do
  before(:each) do
    @tree = Tree.new('original')
  end
  it "initializes with a value and empty children array" do
    @tree.value.should == 'original'
    @tree.children.should == []
  end
end