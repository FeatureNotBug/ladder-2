# Priority
## post-meeting
- ladder person needs to get survey results in readable way w potential client is served that 15 minute call 
- product onboarding process, but short version would be automatically get on phone, autoschedule someone for a call
- process for ladder person to export the proper data field from FB campaign and input them into the product so that there is a standard report view in the product that not necessarily has to be fed by API but by csv
  - a todo for devs connection contact stuff
- standardize reporting export import workflow

## maybe
- only allow 3-5 msgs chosen, all audiences can be chosen, think about business type too
- Other reminders for myself:
  - maybe add an allcombos attribute to each form, so that I can access all the combos and make life a little easier for myself?? (It does seem a bit wasteful, but at the same time, would only need to do a calculation once)

## still to-do
- add in actual form (checkbox parts + require certain number checked) to generate random choices

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

- Select Audience/Message buttons

- add Creative object (is that an image file?)
  - if so, might think about using Paperclip or Carrierwave
- Select Creative buttons

- set Inactive/active status and toggle
  - will need to add inactive/active (0 or 1?) attribute to Campaign
  - session[:campaign].status = etc

# Next on Todo

- Everything is sent to the client for approval
  - at this rate, will probably do by sending link to platform (?)
- Therefore, have to set different permissions for Ladder vs client

## Other - I think it'd be nice, but not really needed for this

- allow users to have multiple campaigns
