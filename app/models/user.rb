class User < ApplicationRecord
  has_secure_password

  def loggedin?
    if session[:user_id] == self
    end
  end
end
