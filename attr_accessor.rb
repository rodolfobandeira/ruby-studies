class Person
  attr_reader :name
#  attr_reader :job
#  attr_writer :job
## Or even shortner way:
  attr_accessor :job 
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end
