SCRIPT_LINES__ = {}

begin
  require './exception'
rescue Exception => e
  file, line = e.backtrace.first.split(':')
  puts "Exception in file: #{file} on line #{line}"
  puts "Actual source on this line >>>>"
  puts SCRIPT_LINES__[file][line.to_i - 1]
end
