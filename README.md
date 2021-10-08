# Learning Jenkins, 03-08: Scheduled jobs
Use the console to create a scheduled job.

## The Cron Format
```
  ┌───────────── minute (0 - 59)
  │ ┌───────────── hour (0 - 23)
  │ │ ┌───────────── day of the month (1 - 31)
  │ │ │ ┌───────────── month (1 - 12)
  │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday)
  │ │ │ │ │                                   
  │ │ │ │ │
  │ │ │ │ │
  * * * * *
```
