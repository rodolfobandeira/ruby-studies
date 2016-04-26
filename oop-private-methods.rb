class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Rodolfo", 100)
eric.about_me
eric.bank_account_number


I'm Rodolfo and I'm 100 years old!
private method `bank_account_number' called for #<Context::Person:0x00000001d350d0 @name="Rodolfo", @age=100>
