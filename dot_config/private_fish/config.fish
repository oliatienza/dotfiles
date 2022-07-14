if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -x NVM_DIR ~/.nvm
set -x GOPATH $HOME/go/
set -x PATH $PATH $GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/oliveratienza/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/oliveratienza/Downloads/google-cloud-sdk/path.fish.inc'; end
