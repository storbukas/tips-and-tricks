# remote shutdown a computer/server

How would you go about turning off a computer at a remote location? Sure, logging in via SSH and typing `sudo shutdown -h now` would do the trick, though a very tedious task if it needs to shut down regularly. If you for example have a server of some kind that is being shutdown pretty often based on usage, you could have set up cronjobs or timers on when to turn off or on your computer, but this requires you to know the exact times.

In my example, I needed the oppurtunity to power on and shut down a Minecraft server based on when people are using it. Since my computer is drawing quite a bit of power, I don't want it to be on when it's not used. I ended up creating a simple PHP-script that allows you to log in and press either the ON or OFF button for the Minecraft server.

#Implementation#

When you press the ON button on the webside, it runs a shell script that sends a Wake On Lan (WOL) packet to the server, and powers it on. The OFF button however, has a different implementation. Since there's no easy way to automatically turn off a computer from a remote location, and if you don't want to set up a webserver on the Minecraft server PC that has sudo rights to perform shell commands like `sudo shutdown -h now`, you need to find another way. I solved it by having the
webserver sending a file over SCP to the Minecraft server, whenever the OFF button is pressed. When the Minecraft server notices this file has arrived at a custom location (cron job) it shuts down.
