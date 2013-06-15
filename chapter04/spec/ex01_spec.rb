require File.expand_path(File.dirname(__FILE__) + '/../lib/ex01.rb')

describe "full_name" do
  it "should equal first + ' ' + last" do
    full_name.stub!(:gets).and_return('Name')
    full_name.should == 'Name Name'
  end
end

describe "better_number" do
  it "should equal arg + 1" do
    ARGF.stub!(:gets).and_return('3')
    better_number.should == 4
  end
end
