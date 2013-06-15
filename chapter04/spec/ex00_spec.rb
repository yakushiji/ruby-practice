require File.expand_path(File.dirname(__FILE__) + '/../lib/ex00.rb')

describe "full_name" do
  def gets
    'Name'
  end

  it "should equal first + ' ' + last" do
    full_name.should == 'Name'
  end
end
