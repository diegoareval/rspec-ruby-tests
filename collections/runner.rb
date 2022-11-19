class Person

    attr_reader :firstname, :lastname
    
    def initialize(firstname, lastname)
      @firstname = firstname
      @lastname = lastname
    end
  
  end
  
  person = Person.new("John", "Doe")
  person.lastname = "Bull"
  puts person.lastname