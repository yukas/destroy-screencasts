def describe(description, &block)
  ExampleGroup.new(block).evaluate
end

class ExampleGroup
  attr_reader :block
  
  def initialize(block)
    @block = block
  end
  
  def evaluate
    instance_eval(&block)
  end
  
  def it(description, &block)
    block.call
  end
end

class Object
  def should
    DelayedAssertion.new(self)
  end
end

class DelayedAssertion
  attr_reader :subject
  
  def initialize(subject)
    @subject = subject
  end
  
  def ==(other)
    raise AssertionError unless subject == other
  end
end

class AssertionError < Exception
end