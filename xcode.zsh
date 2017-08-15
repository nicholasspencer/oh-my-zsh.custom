xcode() {
  xcopen() {
    for f in * ; do
      if [[ $f =~ $1 ]]; then
        echo >&2 "Opening $f"
        open $f
        return 1
      fi
    done
    return 0
  }

  patterns=(
    '(.).xcworkspace' \
    '(.).xcodeproj' \
    '(.).playground' \
    'main.swift'
  )

  for pattern in $patterns; do
    xcopen $pattern
    result=$?
    if [ "$result" = 1 ]; then
      echo 'See ya; Have fun!'
      return
    fi
  done

  echo 'Xcode can not open anything here'
}