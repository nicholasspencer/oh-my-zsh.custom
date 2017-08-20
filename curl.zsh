# > curljson POST http://localhost:8080/users '{"name":"nicholas","email":"test@example.com","password":"password"}'
#
#   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#                                  Dload  Upload   Total   Spent    Left  Speed
# 100   124  100    56  100    68   1452   1763 --:--:-- --:--:-- --:--:--  1789
#
# ===============================================================================
#
# {
#    "id" : null,
#    "email" : "test@example.com",
#    "name" : "nicholas"
# }

json() {
  headers=(
    "Content-Type: application/json" \
    "Accept: application/json"
  )

  headers_joined=${(j:" -H ":)headers}

  result=$(curl -H $headers_joined -X "$1" -d "$3" "$2")
  echo "\n===============================================================================\n"
  echo "$result" | json_pp
}