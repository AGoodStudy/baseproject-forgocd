#!/usr/bin/expect

spawn ssh -p 22 $env(SERVER_USERNAME)@$env(SERVER_HOST) "sh exec-compose.sh"
expect {
    "(yes/no)?"
    {send "yes\n";exp_continue;}
    "password:"
    {send "$env(SERVER_PASSWORD)\n";}
}

expect eof