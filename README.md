# RD test App!

This production app is here: dry-stream-85970.herokuapp.com if you want to see your self how it works. 

To install in your own development just follow the steps listed below.

### Clone this repo
    $ git clone https://github.com/GeBender/rd-challenge-app.git

### Go to the folder and Install the dependencies
    $ cd rd-challenge-app
    $ bundle install

Now, we must create a Partner, with credentials to post some navigation data into the app. One Partner is one website, like a client... this credentials will be placed at the RD test site configuration. You can change this data if you want.

### Migrate de database

    $ make db:migrate

### Open the rails console and save one partner
    $ rails console
    $ Partner.create(:name => 'RD Test Site', :email => 'rd_test_site_homolog@gebender.com.br', :password => '123456')
    $ exit

### Run the server
    $ rails s

Now you just need to open your bronwser, put the RD test app addres: http://localhost:3000 to view the app. Now go to the RD Test site repo (https://github.com/GeBender/rd-challenge-site) and follow the steps there to run it and register some navigation. 

## :-)

