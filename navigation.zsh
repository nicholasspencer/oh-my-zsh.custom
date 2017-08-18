cdgitroot() {
  local result=$(git rev-parse --git-dir) 2> /dev/null;
  if [ -d "$result" ]; then
    cd "$result" && cd ..
  else
    echo "Not under version control"
    return;
  fi
}