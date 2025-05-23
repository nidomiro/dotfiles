if not type -q git
    exit
end

abbr --add trigger-ci 'git pull && git commit --no-verify --allow-empty -m "trigger ci" && git push'

abbr --add g git

abbr --add gru 'git remote update'
abbr --add gp 'git push'
abbr --add gpgh 'git push github'
