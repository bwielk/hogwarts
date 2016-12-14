require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student.rb')
require_relative('./models/house.rb')


get '/students' do 
  @students = Student.all 
  @houses = House.all
  erb(:index)
end

get '/students/new' do 
  @houses = House.all
  erb(:new)
end

post '/students' do
  @houses = House.all
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/students/'