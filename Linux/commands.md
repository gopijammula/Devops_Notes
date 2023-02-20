* list users `cat /etc/passwd` for more info  [refer here](https://phoenixnap.com/kb/how-to-list-users-linux)
##  To check open ports in linux
  * To check open ports in Linux, you can use the "netstat" or "ss" commands. Here are the basic commands:

    Using "netstat" command:

            netstat -tuln
    This will display a list of all open TCP and UDP ports with their associated processes.

    Using "ss" command:

        ss -tuln
    This will display the same information as the "netstat" command, but with more detailed information about the network sockets.

    You can also use the "nmap" command to scan for open ports on a remote server:

        nmap -p 1-65535 <IP address>
    This will scan all 65,535 TCP ports on the specified IP address and report which ones are open. Note that you will need to have the nmap package installed for this command to work.

----
