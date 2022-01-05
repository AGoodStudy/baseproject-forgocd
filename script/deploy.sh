#!/usr/bin/expect

spawn ssh -p 22 $env(SERVER_USERNAME)@$env(SERVER_HOST) "docker-compose down && docker-compose up -d"
expect {
    "(yes/no)?"
    {send "yes\n";exp_continue;}
    "password:"
    {send "$env(SERVER_PASSWORD)\n";}
}

expect eof