# Example
# Route: PATCH /user/:id
# Request PATCH /user/1 { "name": "Ram","email": "ram@example.com" }

# Using schema named user
schema "user"

# Return error message if user id is not found
if user_id < 0 || user_id >= 100
  status 500
  { message: "User not found with id #{user_id}" }
else
  user = generate 1, cache_for: 1.year

  user_id = params['id']
  user_name = entity['name']
  user_email = entity['email']

  user['id'] = user_id

  # Update user details
  if user_name
    user['name'] = name
  end

  if user_email
    user['email'] = user_email
  end

  # Return user
  user
end
