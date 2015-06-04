enable :sessions

# helper do
# 	def current_user
# 		@user = User.find(session[:id]) if session[:id]
# 	end
# end

# before do
# 	if current_user.nil?
# 		redirect to "/login"
# 	else
# 		session[:url] = request.path
# 	end
# end

# OK!
get '/' do
	@posts = Post.all
	erb :index
end

# Display one particular post
get "/posts/:post_id" do
	@post = Post.find(params[:post_id])
	erb :post
end

# Add a new comment to particular post
post "/posts/:post_id" do
	@post = Post.find(params[:post_id])
	if !session[:id].nil?
		# Can comment
		@new_comment = Comment.create(params[:post])
		redirect to "/posts/#{params[:post_id]}"
	else
		redirect to "/login"
	end
end

# Display page to login or create new account
get "/login" do
	erb :login
end

# User authentication
post "/login" do
	# @user will be nill or an User object
	@user = User.authenticate(params[:user][:username], params[:user][:password])
	if @user == nil
		redirect to "/login"
	else
		# If the user is successfully authenticated
		session[:id] = @user.id
		redirect to("/")
	end
end

# Create a new user
post "/new_user" do
	# @auth_result = nil or @user
	@new_user = User.create(params[:new_user])
	if @new_user == nil
		erb :index
	else
		session[:id] = @new_user.id
		redirect to("/")
	end
end

# Display the profile of one particular user
get "/users/:user_id" do
	@user = User.find(params[:user_id])
	erb :user
end

# List all posts for one particular user
get "/users/:user_id/posts" do
	@user = User.find(params[:user_id])
	erb :user_posts
end

# List all comments for one particular user
get "/users/:user_id/comments" do
	@user = User.find(params[:user_id])
	erb :user_comments
end

# Logout and clear session
get "/logout" do
	session.clear
	redirect to "/"
end