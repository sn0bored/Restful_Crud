
post '/add_note' do
  note = Note.new(description: params[:note], user_id: current_user.id)
  note.save
  redirect '/'
end

get '/delete_note' do
  note = Note.destroy(params[:note_id])
  redirect '/'
end


get '/update_note' do
  erb :_update_note
end

post '/update_note' do
  Note.update(params[:note_id], description: params[:new_note])
  redirect '/'
end
