require 'httparty'

class Kele
   include HTTParty
   
   base_uri 'https://www.bloc.io/api/v1'
   
   def initialize(email, password)
      response = self.class.post('https://www.bloc.io/api/v1', body: {email: email, password: password})
      @auth_token = response["auth_token"]
      raise "Invalid email or password. Try again." if @auth_token.nil?
   end
   
end