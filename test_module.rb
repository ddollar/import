module FooModule
  def print_something
    puts "foo_module"
  end

  def stub_method
    puts "hi"
    raise_something
  end

  def raise_something
    raise 'An Exception'
  rescue StandardError => ex
    puts "Backtrace"
    puts ex.backtrace
  end
end
