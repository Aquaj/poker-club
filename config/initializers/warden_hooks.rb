# Setting authentication cookies to properly communicate with ActionCable

Warden::Manager.after_set_user do |user,auth,opts|
    scope = opts[:scope]
    auth.cookies.signed["#{scope}_id"] = user.id
  end

Warden::Manager.before_logout do |user, auth, opts|
  scope = opts[:scope]
  auth.cookies.signed["#{scope}.id"] = nil
end
