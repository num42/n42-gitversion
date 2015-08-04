require "n42gitversion/version"
require "n42gitversion/cli"

module N42gitversion
  class Versioner 
    def version
      puts `git --git-dir=".git" --work-tree="." describe --tags --dirty | sed -e 's/^v//' -e 's/g//'`
    end
    
    def shortVersion
      puts `git --git-dir=".git" --work-tree="." describe --tags --abbrev=0`
    end

    def fullVersion
      puts `git --git-dir=".git" --work-tree="." rev-list master | wc -l`
    end

  end
end
