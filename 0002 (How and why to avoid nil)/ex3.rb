class Person
  def subscribe
    Subscriber.new(Subscription.new)
  end
end

class Subscription
  attr_reader :subscription
  
  def initialize(subscription)
    @subscription = subscription
  end
end

class Subscriber
end

person = Person.new

if false
  subscriber = person.subscribe
  subscriber.subscription
end

# use your language and libraries intelligently
# invert the object relashionship
# guard against nils in a manual attribute reader
# introduce new domain concepts