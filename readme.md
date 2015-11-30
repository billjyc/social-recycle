### How to use

Execute the following instructiongs in terminal:

    $git clone https://github.com/SnoozeZ/social-recycle.git
    $cd social-recycle
    $rails server
Then open the web broswer to open the following url:
    
    http://localhost:3000/
    
### How to contribute code 
First make sure the local files are the newest:
    
    $git pull origin master

If conflict exist, solve it before push.

Then push code into the repo

    $git add .
    $git commit -m "what I have did"
    $git push origin master
    
### Operations about database
reset database: 

    $bundle exec rake db:migrate:reset

rollback:

    $bundle exec rake db:rollback

execute script in /db/migration:

    $bundle exec rake db:migrate

fill in seeds data:

    $bundle exec rake db:seed


----
