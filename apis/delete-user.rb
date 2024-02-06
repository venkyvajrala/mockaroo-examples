#Example
# Route DELETE /user/:id
# Request DELETE /user/1


if user_id < 0 || user_id >= 100
  status 500
  { message: "User not found with id #{user_id}" }
else
  { message: "Success" }
end
