class Person
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def self.find(id)
    people = { 1 => new("alice"), 2 => new("bob") }
    people.fetch(id)
  end
end

class SubscriptionsController
  def create(person_id)
    person = Person.find(person_id)
    Subscription.new.create_for_person(person)
  end
end

class Subscription
  def create_for_person(person)
    create!(person: person, person_name: person.name)
  end
  
  def create!(*)
  end
end

SubscriptionsController.new.create(3)