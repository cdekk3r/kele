Kele
Kele is a Ruby Gem API client to access the Bloc API.

Installation
Add this line to your application's Gemfile:

gem 'kele'
And then execute:

$ bundle
Or install it yourself as:

$ gem install kele
Usage
The client can be used as follows, (Populated with your Bloc.io email and password to access the API. ):

$ irb
>> require './lib/kele'
=> true
>> Kele.new("jane@gmail.com", "abc123")
To retrieve a parsed ruby hash of your Bloc.io account information then run:

$ kele_client.get_me
To retrieve your mentor's current availability:

$ kele_client.get_mentor_availability(mentor_id)
To retrieve your Bloc.io roadmap:

$ kele_client.get_roadmap(roadmap_id)
To retrieve information on a particular checkpoint:

$ kele_client.get_checkpoint(checkpoint_id)
To retrieve your messages:

$ kele_client.get_messages(1) # returns the first page of message threads
$ kele_client.get_messages # returns all message threads
To send a message:

$ kele.client.create_message(sender_email, recipient_id, stripped_text, subject )
To submit a checkpoint:

$ kele_client.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
To update a checkpoint

$ kele_client.update_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
