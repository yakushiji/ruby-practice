require File.expand_path(File.dirname(__FILE__) + '/../lib/ex00.rb')

describe "full_name" do
  it "should equal first + ' ' + last" do
    ARGF.stub!(:gets).and_return('Name')
    full_name.should == 'Name'
  end
end
