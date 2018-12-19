alias gits="git status"
alias gitdev="git checkout develop"
alias gitmast="git checkout master"
alias gitp="git pull origin develop"
alias gitpm="git pull origin master"
alias gitf="git fetch --prune"
alias gitrb="git rebase develop"
alias gitrbm="git rebase master"
alias gitlog="git log --abbrev-commit --format=oneline -n 7"
alias sycache="sudo chmod -R a+w app/cache"
alias dbdrop="php app/console doctrine:database:drop --force"
alias dbcreate="php app/console doctrine:database:create"
alias domimi="php app/console doctrine:migrations:migrate"
alias domidi="php app/console doctrine:migrations:diff"
alias domist="php app/console doctrine:migrations:status"
alias dofilo="php app/console doctrine:fixtures:load"
alias dosup="php app/console doctrine:schema:update"
alias dogeen="php app/console doctrine:generate:entities"
alias asdump="php app/console assetic:dump"
alias rodeb="php app/console debug:router"
alias codeb="php app/console debug:container"
alias ccs="sudo rm -R app/cache/*"
alias sf="php app/console"
alias art="php artisan"
alias gd="git diff --stat master HEAD"
alias gdf="git diff master HEAD"
alias h="git diff HEAD -w --ignore-blank-lines --cached"
alias nano="nano --const"
alias recent="git for-each-ref --sort=-committerdate --format='%(committerdate:short) %(color:yellow)%(refname:short)%(color:reset)' refs/heads"
alias wip="git commit -m \"wip\" && git status"
alias sdir="find . -print | sed -e \"s;[^/]*/;|___;g;s;___|; |;g\""
alias pcs="php-cs-fixer fix --dry-run --diff"
alias pcsf="php-cs-fixer fix"
alias docun="docker rmi -f \$(docker images -qf \"dangling=true\")"
alias dcup="docker-compose up --build"
alias dcst="docker-compose down"
alias randkeys="for i in {1..24}; do openssl rand -base64 48; done"
alias wttr="curl http://wttr.in/Kharkov"
