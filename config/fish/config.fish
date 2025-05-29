set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

fish_add_path $HOME/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin

if status is-interactive
    # plugins
    functions -q _pure_prompt || fisher install pure-fish/pure

    # functions
    function jdk
        set jdk_version $argv[1]
        if test -z "$jdk_version"
            echo (tput bold)Available JDK versions:(tput sgr0)
            /usr/libexec/java_home -V
        else
            set -x JAVA_HOME (/usr/libexec/java_home -v "$jdk_version")
        end
        echo (tput bold)Current JDK version:(tput sgr0)
        java -version
    end
end
