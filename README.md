<h3>Kele</h3>

Kele is a Ruby Gem API client to access the Bloc API.

Installation
Add this line to your application's Gemfile:

  `gem 'kele'`

And then execute:

  `$ bundle`

Or install it yourself as:

  `$ gem install kele`

<h3>Usage</h3>

The client can be used as follows, (Populated with your Bloc.io email and password to access the API. ):

```
$ irb
>> require './lib/kele'
=> true
>> Kele.new("jane@gmail.com", "abc123")
```

<h6>To retrieve a parsed ruby hash of your Bloc.io account information then run:</h6>

    `$ kele_client.get_me`

<h6>To retrieve your mentor's current availability:</h6>

    `$ kele_client.get_mentor_availability(mentor_id)`

<h6>To retrieve your Bloc.io roadmap:</h6>

    `$ kele_client.get_roadmap(roadmap_id)`

<h6>To retrieve information on a particular checkpoint:</h6>

    `$ kele_client.get_checkpoint(checkpoint_id)`

<h6>To retrieve your messages:</h6>

    `$ kele_client.get_messages(1) # returns the first page of message threads`
    `$ kele_client.get_messages # returns all message threads`

<h6>To send a message:</h6>

    `$ kele.client.create_message(sender_email, recipient_id, stripped_text, subject )`

<h6>To submit a checkpoint:</h6>

    `$ kele_client.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)`

<h6>To update a checkpoint</h6>

  `$ kele_client.update_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)`

