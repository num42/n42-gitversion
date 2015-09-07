require 'thor'

module N42gitversion
  class VersionCLI < Thor
    N42gitversion

    desc "shortVersion", "prints the short version"
    def shortVersion
        puts N42gitversion::Versioner.new.shortVersion
    end

    desc "fullVersion", "prints the  full version"
    def fullVersion
        puts N42gitversion::Versioner.new.fullVersion
    end
  end
end
