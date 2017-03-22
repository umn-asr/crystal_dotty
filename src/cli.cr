require "cli"

class CLI < Cli::Command
  command_name "dotty"

  class Help
    header "Crystal Dotty Help"
  end

  class Options
    help
  end

  def run
    help!
  end
end
