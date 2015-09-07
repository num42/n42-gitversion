require "n42gitversion/version"
require "n42gitversion/cli"

module N42gitversion
  class Versioner
    def version
      puts `git --git-dir=".git" --work-tree="." describe --tags --dirty | sed -e 's/^v//' -e 's/g//'`
    end

    def shortVersion
      puts `git --git-dir=".git" --work-tree="." describe --tags --abbrev=0 | sed -e 's/^v//'`
    end

    def fullVersion
      number_of_commits = `git --git-dir=".git" --work-tree="." rev-list master | wc -l`
      puts "#{majorVersion}#{number_of_commits}"
    end

    def majorVersion
      shortVersion.split('.').first
    end
  end
end
