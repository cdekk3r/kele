require 'httparty'
require 'json'
require_relative 'roadmap'

class Kele
   include HTTParty
   include Roadmap
   
   base_uri 'https://www.bloc.io/api/v1'
   
   
   def initialize(email, password)
      response = self.class.post(api_url('sessions'), body: {email: email, password: password})
      @auth_token = response["auth_token"]
      raise "Invalid email or password. Try again." if @auth_token.nil?
   end
   
   def get_me
      response = self.class.get(api_url('users/me'), user_auth)
      @user = JSON.parse(response.body)
   end
   
   def get_mentor_availability(mentor_id)
      response = self.class.get(api_url("mentors/#{mentor_id}/student_availability"), user_auth)
      available = []
      response.each do |slot|
         if slot["booked"] == nil
            available << slot
         end
         available
      end
   end
   
   def get_messages
      response = self.class.get(api_url('message_threads'), user_auth)
      @messages = JSON.parse(response.body)
   end
   
   private
   
   def api_url(endpoint)
      "https://www.bloc.io/api/v1/#{endpoint}"
   end
   
   def user_auth
      {headers: { "authorization" => @auth_token }}
   end
      
end