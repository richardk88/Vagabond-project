module PostsHelper
    def check_user(user)
        user == current_user
    end
end
