access_token=$1
lang=$2
input=$3
codefile=$4
content=$5

runcode(){
curl --location --request POST 'https://onecompiler.com/api/v1/run?access_token=${access_token}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "language": "${lang}",
  "stdin": "${input}",
  "files": [
    {
      "name": "{codefile}",
      "content": "${content}"
    }
  ]
}'
}
runcode
