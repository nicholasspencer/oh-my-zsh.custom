function template() {
  template_file="$ZSH_CUSTOM/templates/script.$1"
  if [[ -e $template_file ]]; then
    mkdir "$2" && cd "$2"
    cp $template_file main.$1
  else
    echo "Template $template_file not found"
  fi
}
