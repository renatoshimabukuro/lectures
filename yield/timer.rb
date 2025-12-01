def timer
  start_time = Time.now

 yield # #yield executes the block that is passed as an argument

end_time =Time.now
elapsed_time = end_time - start_time
puts "Elapsed time: #{elapsed_time} seconds"
end

timer do
  puts "Doing a bit of work..."
  sleep(2)
  puts "I'm done now... :)"
end

timer do
  puts "Doing a bit of work..."
  sleep(4)
  puts "I'm done now... :)"
end
