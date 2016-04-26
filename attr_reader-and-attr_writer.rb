class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  attr_reader :name
  attr_writer :job

=begin  
  def name # this is a get method for 'name'
    @name
  end
  
  def job=(new_job) # using this '=' means that this is a set method
    @job = new_job
  end
=end

end
