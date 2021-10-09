def index
end

private

def require_login
  redirect_to :root if current_user.empty?
end
end