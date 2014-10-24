require 'sinatra'

configure do
  set :public_folder, 'middleman/build'
end
 
get "/" do
  redirect '/index.html'
end

get "/learn" do
  redirect '/learn/index.html'
end

get "/about" do
  redirect '/about/index.html'
end

get "/dojo" do
  redirect '/dojo/index.html'
end

get "/get-in" do
  redirect '/get-in/index.html'
end

get "/contribute" do
  redirect '/get-in/index.html'
end

get '/individualcontribution.pdf' do
  redirect '/pdfs/CFF_Individual_CLA.pdf'
end

get '/corpcontribution.pdf' do
  redirect '/pdfs/CFF_Corporate_CLA.pdf'
end
 
# route to custom error page (404.html)
not_found do
  redirect '/404.html'
end
