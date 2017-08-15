function xcode() {
  # find workspaces first
  for f in * ; do
    if [[ $f =~ '(.).xcworkspace' ]]; then
      open $f
      return
    fi
  done
  
  # then projects
  for f in * ; do
    if [[ $f =~ '(.).xcodeproj' ]]; then
      open $f
      return
    fi
  done

  echo 'Xcode can not open anything here'
}