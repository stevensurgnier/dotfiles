export PATH=$HOME/bin:\
/usr/local/bin:\
/usr/local/sbin:\
$HOME/.rbenv/bin:\
$HOME/.rbenv/versions/1.9.3-p125/lib/ruby/gems/1.9.1/gems/:\
/usr/local/share/npm/bin:\
$PATH

TERM=screen-256color-bce
CLICOLOR=1
_JAVA_OPTIONS=-Djava.awt.headless=true
JAVA_HOME=`/usr/libexec/java_home -v 1.8`
PS1="[\$(date +%k:%M:%S)] \h:\w$ "
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8

export TERM CLICOLOR _JAVA_OPTIONS JAVA_HOME PS1 LC_ALL LANG

# aliases
alias ls="ls -F"
alias la="ls -lhFa"
alias lt="ls -lhFt"
alias lS="ls -lhFS"
alias path='echo -e ${PATH//:/\\n}'
alias R="R --quiet"
alias httpserver="python -m SimpleHTTPServer $1"
alias chrome="open -a /Applications/Google\ Chrome.app/ $1"
alias chromeInsecure="open -n -a Google\ Chrome --args --disable-web-security --user-data-dir=$HOME/tools/chrome/user-data"
alias emacs="open -a /Applications/Emacs.app $1"
alias mvn3="mvn"
alias json="python -m json.tool"
alias xmlpp="xmllint --format"
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

sshagent () {
    . "${HOME}"/bin/sshagent
}

gpgagent () {
    . "${HOME}"/bin/gpgagent
}

sshagent
gpgagent
