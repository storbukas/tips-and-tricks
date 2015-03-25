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

#Time examples#

Every whole hour (10:00, 11:00 and so on)

    00 * * * *

Specific time (someones birthday), 08:30 at 15th of September

    30 08 15 08 *

Twice a day (noon and midnight)
    
    00 00,12 * * *

During working hours (backup of data every hour)

    00 08-16 * * *
