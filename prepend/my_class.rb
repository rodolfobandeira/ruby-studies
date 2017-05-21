require './custom_module.rb'

class MyClass
  prepend CustomModule

  def simple_method
    puts 'simple_method from MyClass'
  end
end


foo = MyClass.new
foo.simple_method

