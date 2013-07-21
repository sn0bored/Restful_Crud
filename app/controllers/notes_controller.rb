
post '/add_note' do
  note = Note.new(description: params[:note], user_id: current_user.id)
  note.save
  redirect '/'
end

get '/delete_note' do
  note = Note.destroy(params[:note_id])
  redirect '/'
erb :login
end

get '/update_note' do
  erb :update_note 
end



