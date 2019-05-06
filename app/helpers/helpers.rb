class Helpers

  def self.current_user(session)
    User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(session)
    User.all.each do |user|
      if user.id == session[:user_id]
        return true
      else
        false
      end
    end
  end

end
