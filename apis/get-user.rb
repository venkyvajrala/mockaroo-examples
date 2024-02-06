# Example
# Route: GET /user/:id.json
# Request GET /user/1.json

# Use the schema named user
schema "user"

# Get user id from params
user_id = params["id"].to_i
# Return error message if user id is not found
if user_id < 0 || user_id >= 100
  	status 500
  	{ message: "User not found with id #{user_id}" }
else
	# caching the user will give same response for same url.
	# Ex: https://my.api.mockaroo.com/user/123.json?key=<key> will always give same user details.
	user = generate 1, cache_for: 1.year

	# Update user id with params id
	user["id"]=params["id"]

	# Return user
	user
end
