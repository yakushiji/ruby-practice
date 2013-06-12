def doClock sound
  current_hour = Time.now.strftime("%l").to_i
  current_hour.times {sound.call}
end

dong = Proc.new do
  puts 'DONG'
end

ring = Proc.new do
  puts 'Ring-Ring!'
end

pong = Proc.new do
  puts 'Pong!'
end

doClock dong
doClock ring
doClock pong
