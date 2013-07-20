
post '/add_note' do
  note = Note.new(description: params[:note], user_id: current_user)
  note.save
erb :login
end
