_getBoot()
{
    local cur
    COMPREPLY=()
    #Variable to hold the current word
    cur="${COMP_WORDS[COMP_CWORD]}"

    #Build a list of our keywords for auto-completion using
    #the tags file
    local tags="help list generate init add use remove"

    #Generate possible matches and store them in the
    #array variable COMPREPLY
    COMPREPLY=($(compgen -W "${tags}" $cur))
}

#Assign the auto-completion function _get for our command get.
complete -F _getBoot bootstrapper 
