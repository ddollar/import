def import(filename)
  wrapper = Module.new
  wrapper.module_eval(File.read(filename), filename)
  wrapper.const_get(wrapper.constants.last)
end
