# N42gitversion

a tool to manage iOS versions based on git tags

## Installation

Add this line to your application's Gemfile:

    gem "n42gitversion", git: "git@bitbucket.org:number42/n42-gitversion-ruby.git"

And then execute:

    $ bundle binstubs n42gitversion

Add run script build phase:

    INFO_PLIST="${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}/Info"
    defaults write "$INFO_PLIST" CFBundleShortVersionString $(n42gitversion shortVersion)
    defaults write "$INFO_PLIST" CFBundleVersion $(n42gitversion version)
    defaults write "$INFO_PLIST" FullVersion $(n42gitversion fullVersion)

## Usage

Commands:
    $ n42gitversion fullVersion     # prints the full version
    $ n42gitversion help [COMMAND]  # Describe available commands or one specific command
    $ n42gitversion shortVersion    # prints the short version
    $ n42gitversion version         # prints the version
