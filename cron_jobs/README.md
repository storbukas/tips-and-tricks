# Automate task with cron jobs

#Cron Job#

What is a cron job? A cron job is simply a script, action or command that is run on your computer at given times. It could be start of every year, every month or even minute. A cron job is written this way:

    m h d m y   command_to_be_run

For example:

    * 12 * * * backup_every_day_at_noon

#How to add#

To add a cron job to your system type

    crontab -e

Append whatever you want to be run to the end of the file in the style shown above

If you need to add a task which requires sudo rights to run, you need to add the cron job with the sudo command like this

    sudo crontab -e

Then your script can contain sudo commands and perform sudo-actions/commands.

Alternatively if you'd like to be able to add cron jobs for other users on the system, you need to specify this to crontab (requires sudo)

    crontab -u other_user -e

#View cron jobs#

If you want to view cron jobs for the user logged in you type

    crontab -l

To view sudo/root cron jobs log in as root or type sudo before the crontab -l

However if you want to show cron jobs added to other users on the system, you need to specify this to crontab

    crontab -u other_user -l

#Time examples#

Every whole hour (10:00, 11:00 and so on)

    00 * * * *

Specific time (someones birthday), 08:30 at 15th of September

    30 08 15 08 *

Twice a day (noon and midnight)
    
    00 00,12 * * *

During working hours (backup of data every hour)

    00 08-16 * * *

#Special commands#

Sometimes you may require your script to run at startup, in this case crontab has theese special commands than is a little bit more verbose.

    @reboot command_to_be_run

Which will be run at every startup of the system. Theres also some other keywords, though they only replace an equivalent standard cron job time.

    @yearly     equivalent to:  0 0 1 1 *
    @daily      equivalent to:  0 0 * * *
    @hourly     equivalent to:  0 * * * *

Say that you have a script that you want to run reqularly, but every minute is to often and every hour is to seldom, what do you do? Do you maybe add multiple special minute cases? Let's say you want the script to run every 5 minutes, instead of doing this....

    0 * * * * command_to_be_run
    5 * * * * command_to_be_run
    10 * * * * command_to_be_run
    .... and so on

This becomes a very tedious job, especially if you have many of this kind or if you have to update the time intervals. A better solution is this:

    */5 * * * * command_to_be_run_every_5_mins

This cronjob will run every time the minute equal something divisible by 5, which gives us the result we want: every 5 minutes

Another nifty trick is having a cron job running at a given interval, and also having one running just seconds after that. In this example a cron job will run every minute, and one every minute and 10 seconds.

    * * * * * command_to_be_run
    * * * * * sleep 10; other_command

Other area of use is if you want something to be sent to a server, and then having the server run something to check if the file has arrived, you could instead of checking a minute later, have the cron job wait 10 seconds (assuming the file is sucessfully transfered within that time).
