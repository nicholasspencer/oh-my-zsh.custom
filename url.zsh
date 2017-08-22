# Shamelessly stolen from https://stackoverflow.com/a/6174447

uri_proto(){
  echo "$(echo $1 | grep :// | sed -e's,^\(.*://\).*,\1,g')"
}

uri_url(){
  echo "$(echo $1 | sed -e s,$(uri_proto $1),,g)"
}

uri_user(){
  echo "$(echo $(uri_url $1) | grep @ | cut -d@ -f1)"
}

uri_host(){
  echo "$(echo $(uri_url $1) | sed -e s,$(uri_user $1)@,,g | cut -d/ -f1)"
}

uri_port(){
  echo "$(echo $(uri_host $1) | sed -e 's,^.*:,:,g' -e 's,.*:\([0-9]*\).*,\1,g' -e 's,[^0-9],,g')"
}

uri_path(){
  echo "$(echo $(uri_url $1) | grep / | cut -d/ -f2-)"
}