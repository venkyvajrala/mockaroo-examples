# Example
# Route GET /users?page=<page_number>
# Request GET /users?page=1


# Use schema named users
schema "users"

# Generate 10 users
users = generate 1, cache_for: 1.year

# Return empty page if page requested is greater than 5
if params["page"].to_i >= 5
  {hasNextPage: false,result:[]}
else
  users
end
