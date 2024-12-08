
goto() {
  cd $1 && ls -al
}

mkcd() {
  mkdir -p $1 && cd $1
}

tq() {
  curl wttr.in/$1
}

u() {
  local msg=${1:-update}
  git add . && git commit -m "$msg" && git push
}

reminder() {
  (sleep $1 && osascript -e "display notification \"$2\" with title \"提醒\"") & 
}
