# NZ-Fire-Data
Web Scrapped incident data from NZ Fire and Rescue

Cron Job: 
To schedule script to run, 
In terminal, run chmod +x on the /path/to/Rscript fire_data_scrape_cron.R file. 

Go to your cronjobs (on OSX just enter crontab -e within terminal)
If using VI, type I for insert and then 0 3 * * 0 /path/to/Rscript fire_data_scrape_cron.R
:wq to save and exit. 
