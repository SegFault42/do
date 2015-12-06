module UnitTester
  def get_moulitest
    # get the moulitest unitest
  end
end

module Template
  def c_project_template
    #create c templateproject for 42 projects 
  end
end

module Launcher
  if ARGV.empty?
    puts 'Usage: '
    puts 'do [-options]'
    puts '--moulitest or -m libft <part1| part2| bonus| all>'
  end
end


