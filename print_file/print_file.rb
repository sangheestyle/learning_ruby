class File
  def self.open_and_process(*args)
    puts "1st"
    f = File.open(*args)
    yield f
    puts "2nd"
    f.close()
    puts "3rd"
  end
end

File.open_and_process("text.txt", "r") do |file|
  while line = file.gets
    puts line
  end
end
