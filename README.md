## How to use
### Pre-requisite: Docker installed
### Build
`make build`
### Setup/Enter machine
`make run`
### Run program inside bash
`./zombie`
### Start a second terminal to see the zombie process
`make ssh_zom_cont`
### Kill zombie process inside 2nd terminal
`kill -9 "$(ps -o ppid= -p$(ps aux | awk '$8=="Z+" {print $2}' ))"`