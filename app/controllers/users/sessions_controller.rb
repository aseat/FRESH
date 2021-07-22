class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
    user.nickname = "ゲスト"
    user.password = SecureRandom.alphanumeric(10) + [*'a'..'z'].sample(1).join + [*'0'..'9'].sample(1).join
    user.text = "ゲストです。"
    end
    sign_in user
    redirect_to root_path
  end
end
