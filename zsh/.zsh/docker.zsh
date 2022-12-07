# Compose
alias dcdown='docker compose -f docker-compose.dev.yml down'
alias dcup='docker compose -f docker-compose.dev.yml up -d'
alias dprune='docker system prune'
alias dkill='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias dpurge='docker rmi $(docker images -q)'
alias dnuke='dkill && dpurge'
