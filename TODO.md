# Priority
## post-meeting
- ladder person needs to get survey results in readable way w potential client is served that 15 minute call 
- output notification
- product onboarding process, but short version would be automatically get on phone, autoschedule someone for a call
- process for ladder person to export the proper data field from FB campaign and input them into the product so that there is a standard report view in theproduct that not necessarily has to be fed by API but by csv
  - a todo for devs connection contact stuff
- standardize reporting export import workflow

## still to-do
- submit link from index to result page
- thoughts on how to pass info:
  - maybe add a "next" button and use renders (Will 1 page scroll work?  Need to add JS in header)
  - or look into nested forms -> WILL TRY THIS FIRST
  - "this is my brand" button wouldn't necessarily have to be part of a real form; could just be page redirection!
- add in actual form (checkbox parts + require certain number checked) to generate random choices
  - don't generate all combos user chose for now
    - nvm I might have to
  - FYI, radio button can be done by using still ck-button, but use radio_button_tag vs check_box_tag

- moodboarding client side stuff
  - allows client some control over creative appearance
    - would that be another tab (can control from cancan)
      - maybe make AdminController < UserController (so there would be overlap in what admin can do, whatever, can clean that up later)

# Database Work

- Issues to resolve: 
  - work out how links campaigns/1 etc will work
  - REMINDER:
    - user -> campaigns
      - [(maybe) NOT NECESSARY]
    - campaign -> audiences
               -> messages
               -> creatives

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
