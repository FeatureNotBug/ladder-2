# Priority

- Get landing page w/options up
- Randomizations of combos:
  - will need an array of all the possible options
    - should this be done in controller? (probably not neatest way to do)
    - or can generate a random number and then read up to that line?
  - don't agonize over this; the numbers will be small so inefficiency is not that big a deal

# Database Work

- Issues to resolve: 
  - figure out how session variables work
    - need session[:campaign] <- should be the only session var I need.
    - set this session var thru dropdown
      - a before_filter should not be necessary, since you can't access the other pages anyway (unless you're being stupid)

- Add + Select Audience buttons

- Add Message + Select Message buttons

- add Creative object (is that an image file?)
  - if so, might think about using Paperclip or Carrierwave
  - each Creative knows which Campaign it is associated with
- Add Creative + Select Creative buttons

- set Inactive/active status and toggle
  - will need to add inactive/active (0 or 1?) attribute to Campaign
  - session[:campaign].status = etc

# Next on Todo

- Everything is sent to the client for approval
  - at this rate, will probably do by sending link to platform (?)
- Therefore, have to set different permissions for Ladder vs client

## API related

- Put Campaign live (ELSEWHERE, an indicator shows "live")
  - therefore, need Campaign to have property "status"
- Make the report out of the stats

## Other (ought to have them, but may not get to -??!)

- display Campaign name after "VIEWING" in layout view
- allow one user to have multiple Campaigns (probably represented by ids...cannot find other way to declare in database)
- add corresponding menu to allow user to switch between Campaigns to view
- add a add Campaign button ?
