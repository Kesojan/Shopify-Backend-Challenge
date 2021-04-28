class UsersController <ApplicationController
    def show
        @user = User.find_by(username: params[:username])
        @images = @user.images.order(created_At: :desc).limit(10)
    end
end

