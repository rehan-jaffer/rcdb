class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def user_class
    user_classes = ["Consumer","Moderator","Admin"]
    user_classes.each do |user_class|
        return user_class if has_role? user_class.downcase.to_sym
    end
    return "Consumer"
  end

  def make_user_moderator!
    add_role :moderator
  end

  def make_user_admin!
    add_role :admin
  end

end
