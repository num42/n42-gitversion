require "n42gitversion/version"

module N42gitversion
  def self.version
    puts `git --git-dir=".git" --work-tree="." describe --tags --dirty | sed -e 's/^v//' -e 's/g//'`
  end
end
