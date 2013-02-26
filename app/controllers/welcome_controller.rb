class WelcomeController < ApplicationController
	require 'punchr'

def index
	Punchr.api_key = Figleaf::Settings.punchr["dev_key"]
	@client = Punchr::Client.new

	examples = [
	"Nutella and cream",
	"Noodle, basil and chicken",
	"Beef and honey",
	"Turkey, cream and pasta",
	"Salmon and rice",
	"Apple and caramel",
	"Nutella cookies",
	"Pork and tomatoes",
	"Shrimps and cream",
	"Pork and pasta",
	]
	@example = examples[rand(examples.length)]

	if params[:search]
		@response = @client.recipes(:q => params[:search], :count => 50)
		
	end

end

end
