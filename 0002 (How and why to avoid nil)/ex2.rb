class Person
  def subscribe!
    @subscription = Subscription.new
  end
  
  def subscription
    @subscription or raise NoSubscriptionError
  end
end

class NoSubscriptionError < Exception
end

class Subscription
end

person = Person.new

if false
  person.subscribe!
end

person.subscription