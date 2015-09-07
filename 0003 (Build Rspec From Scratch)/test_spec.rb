require "test/unit"
require_relative "spec"

class TestDescribe < Test::Unit::TestCase
  def test_it_can_pass
    describe "something" do
      it "does something" do
      end
    end
  end
  
  def test_it_can_fail
    assert_raise IndexError do
      describe "something" do
        it "does something" do
          raise IndexError
        end
      end
    end
  end
end

class TestAssertion < Test::Unit::TestCase
  def test_it_can_pass
    2.should == 2
  end
  
  def test_it_can_fail
    assert_raise AssertionError do
      1.should == 2
    end
  end
end