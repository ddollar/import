#!/usr/bin/env ruby

require 'import'

TestClass  = import 'test_class.rb'
TestModule = import 'test_module.rb'

class FooClass
  include TestModule
end

puts TestClass.new.print_something
puts FooClass.new.print_something
FooClass.new.stub_method
