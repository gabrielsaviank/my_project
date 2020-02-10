module UsersHelper
  def checked(area)
    @user.tipo.nil? ? false : @user.tipo.match(area)
  end
end
