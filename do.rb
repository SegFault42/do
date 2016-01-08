# for unit test project tester
module UnitTester
  def self.get_moulitest
    system "git", '--version'
    ARGF.each do |line|
      put line if line =~ /git/
    end
    system "echo",  "\e[32mI am doing the moulitest whit echo[0m"

    # get the moulitest unitest
  end
end

# to create template for c project
module Template
  def self.c_project_template
    #create c templateproject for 42 projects
  end
end

# methods to lauch command by parsing argument
module Launcher
  def self.read_args
    if ARGV.empty?
      ParseArg::display_help
    else
      ParseArg::doargs ARGV[0]
    end
  end
end

# methods to parse argument
module ParseArg
  VALID_ARGS = ['moulitest', 'norminette', 'template', 'push']
  def self.doargs(arg)
    if VALID_ARGS.include? arg
      VALID_ARGS.each do |ar|
        if ar == 'moulitest'
            UnitTester::get_moulitest
          puts "doing #{arg}"
          return true
        end
      end
    else
      puts "#{arg} is not an argument"
      ParseArg::display_help
    end
  end

  def self.display_help
    puts 'Usage: '
    puts 'do [options]'
    puts 'moulitest: Check your project with the moulitest'
  end
end

Launcher::read_args
