class WelcomeController < ApplicationController
	require 'punchr'

def index
	Punchr.api_key = Figleaf::Settings.punchr["dev_key"]
	@client = Punchr::Client.new

	if params[:search]
		@response = @client.recipes(:q => params[:search], :count => 50)
		
	end

end

end
