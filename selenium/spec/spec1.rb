# spec.rb
require_relative '../lib/testable'

describe Testable, "value" do
  it "is true" do 
    testable = Testable.new
    testable.value.should eq(true)
  end
end