  def volume(options)
    options[:depth] * options[:height] * options[:width]
  end

results = volume(width: 10, height: 5, depth: 2.5)
puts "Volume is #{results}"
