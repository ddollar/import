def import(filename)
  wrapper = Module.new
  wrapper.module_eval(File.read(filename), filename)
  
  puts wrapper.constants.inspect
  raise 'More than one object defined' unless wrapper.constants.length == 1
  wrapper.const_get(wrapper.constants.first)
end
