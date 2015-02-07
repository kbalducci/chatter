module ChatsHelper
  def user_collection
    User.select('id', 'profile_name').map { |user| [user.profile_name, user.id] } #=> [ [1, 'johndoe'], [2, 'janeSmith']]
  end
end
