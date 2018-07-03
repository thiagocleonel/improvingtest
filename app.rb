require 'sinatra'
require 'json'
require 'byebug'
require "sinatra/activerecord"
require_relative 'models/payload.rb'


post '/' do
  redirect 'events'
end


post '/events' do
 payload = request.body.read
 issue = JSON.parse(payload)['issue']
 issue ? issue_number = issue['number'] || nil : issue_number = nil
 return 200 if Payload.create(issue_number: issue_number, data: payload)
 return 500
end

get '/issues/:issue_number/events' do
 content_type :json
 issue_number = params[:issue_number]
 payloads = Payload.where(issue_number: issue_number)
 return 404 if payloads.empty?
 data = payloads.collect {|p| p.data}
 return "[#{data.join(",")}]"

end
