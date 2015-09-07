require "n42gitversion/version"
require "n42gitversion/cli"

module N42gitversion
  class Versioner
    def fullVersion
      "#{shortVersion}.#{number_of_commits}"
    end

    def shortVersion
      `git --git-dir=".git" --work-tree="." describe --tags --abbrev=0 | sed -e 's/^v//'`.strip
    end

    private

    def buildNumber
      `git --git-dir=".git" --work-tree="." rev-list master | wc -l`.strip
    end
  end
end
