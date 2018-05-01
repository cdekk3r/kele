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

<h5>To retrieve a parsed ruby hash of your Bloc.io account information then run:</h5>

    $ kele_client.get_me

<h5>To retrieve your mentor's current availability:</h5>

    $ kele_client.get_mentor_availability(mentor_id)

<h5>To retrieve your Bloc.io roadmap:</h5>

    $ kele_client.get_roadmap(roadmap_id)

<h5>To retrieve information on a particular checkpoint:</h5>

    $ kele_client.get_checkpoint(checkpoint_id)

<h5>To retrieve your messages:</h5>

    $ kele_client.get_messages(1) # returns the first page of message threads
    $ kele_client.get_messages # returns all message threads

<h5>To send a message:</h6>

    $ kele.client.create_message(sender_email, recipient_id, stripped_text, subject )

<h5>To submit a checkpoint:</h5>

    $ kele_client.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)

<h5>To update a checkpoint</h5>

    $ kele_client.update_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)

