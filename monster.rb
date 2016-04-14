class Monster
  attr_reader :name, :actions
  def initialize(name)
    @name = name
    @actions = {
      scream: 0,
      scares: 0
    }
  end

  def say(&block)
    print "#{name} says..."
    block.call
  end

  def print_scoreboard
    puts "------------------------------"
    puts "#{name} scoreboard"
    puts "------------------------------"
    puts "- Screams: #{actions[:scream]}"
    puts "- Scares: #{actions[:scares]}"
  end

  def scream(&block)
    actions[:scream] += 1
    print "#{name} screams! "
    block.call
  end

  def scares(&block)
    actions[:scares] +=1
    print "#{name} scares you!"
    block.call
  end

end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
puts monster.actions
monster.scream { puts "BOO!" }
monster.scares { puts "Go away!" }
puts monster.actions
puts "\n"
monster.print_scoreboard
