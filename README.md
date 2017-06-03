# README

## Notes from the team

### Cody


### Jack
For twilio: trial accounts only allow you to send to confirmed numbers (basically just whoever is associated with the account) the text confirmation is set up to not pull the users phone number, but to the trial accounts confirmed number (mine). You should set yourself up with a trial account and change the appropriate application.yml keys and the associated number. As a workaround, 1234 or the sent code will always pass the confirmation code.
The TwilioSender.send service can take an optional parameter of a user phone number. Because of the trial limitation, you should not pass in the user phone number unless you upgrade your twilio account to allow unconfirmed number texting
### Josh

- For user authentication, we're using [sorcery](https://github.com/NoamB/sorcery)
- [this guide](https://www.sitepoint.com/magical-authentication-sorcery/) is what got it working. Top notch!
- to prep the project, clone it down, `bundle`, and then `rake db:create`.
- we always "reset" the database instead of seeding, so your go-to workflow should be `rake db:reset`. (you run into uniqueness validation problems if you try to seed twice in a row)
- We used Materialize for styling.
- if you want to see a sample user with projects, log in with `user_with_projects@email.com`, and `password`
- using [highcharts]() and found [this tutorial](https://www.sitepoint.com/make-easy-graphs-and-charts-on-rails-with-chartkick/) very helpful, if you choose to extend this.

### Mark

### Sergey


## Misc resources we've used

-
