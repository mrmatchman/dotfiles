#echo "Running .bashrc..."

#echo "Creating aliases..."
alias g="gvim --remote-silent"
alias v="vim"
alias vi="vim"
alias ls='ls --color=auto'
alias ll="ls -al"
alias f=fossil
alias y=yaourt
#alias ack=ack-grep
alias ch="chromium-browser"
alias ff="firefox"
alias todo="vim ~/todo.txt"
alias p8="ping 8.8.8.8"

echo "Setting JAVA_HOME..."
export JAVA_HOME=/opt/java6

echo "Setting up JBOSS_HOME"
export JBOSS_HOME=/opt/jboss5.1

echo "Setting up M2_HOME"
export M2_HOME=/opt/maven

echo "Updating PATH..."
export PATH=$PATH:/opt/eclipse:~/bin:$JAVA_HOME/bin:$M2_HOME/bin

echo "Setting up default editor..."
export EDITOR=vim
export VISUAL=vim

echo "Pretend awesome is LG3D wmanager so that Java apps can be seen in awesome..."
wmname LG3D

echo "Setting up command prompt..."

function exitstatus {

EXITSTATUS="$?"
BOLD="\[\033[1m\]"
RED="\[\033[1;31m\]"
GREEN="\[\e[32;1m\]"
BLUE="\[\e[34;1m\]"
OFF="\[\033[m\]"
#PROMPT="[\u@\h ${BLUE}\W${OFF}"
PROMPT="[\h] \w"

if [ "${EXITSTATUS}" -eq 0 ]
then
    PS1="${PROMPT} ${BOLD}${GREEN}:)${OFF} > "
else
    PS1="${PROMPT} ${BOLD}${RED}:( ERR:${EXITSTATUS}${OFF} > "
fi

    PS2="${BOLD}>${OFF} "
}

PROMPT_COMMAND=exitstatus
#export PS1="[\h] \w > "

# [[ -s "/home/buneku/.rvm/scripts/rvm" ]] && source "/home/buneku/.rvm/scripts/rvm"  # This loads RVM into a shell session.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

RND=`~/bin/my_random.py 10`
case $RND in
  "1") ~/bin/dieta.sh ;;
  "2") ~/bin/mainmenu.sh ;;
  "3") fortune ;;
  *) 
esac

# if [[ `python -c "import random; print int(random.random()*10)%2"` -eq "0" ]];
# then
#     #cd ./LearningPython/notes/
#     #./print_random_note.py
#     cd
#     echo "----------------------------"
# else
#     if [[ `python -c "import random; print random.randint(0,10)"` -eq "0" ]];
#     then
#         echo "Time to BACK UP!!!"
#         # time to solve quiz
#     else
#         if [[ `python -c "import random; print random.randint(0,10)"` -eq "0" ]];
#         then
#             fortune
#         fi
#         echo 
#         echo "Multimedia: "
#         echo "MOD + e   for   English Radio"
#         echo "MOD + s   for   Sarrah from the daily english show"
#         echo "MOD + c   for   Cinema: random movies"
#         echo
#         echo "Utilities: "
#         echo "MOD + t   for   GNOME terminal"
#         echo "MOD + q   for   poweroff"
#         echo "MOD + r   for   run command"
#         echo "MOD + ENTER for terminal"
#         echo 
#     fi
# fi
