##USERS
+ id
+ name
+ email
+ password
+ baby_last_name
# favorited_names = [] <= ids of names they have added to favorites 

##NAMES
+ id
+ name
+ gender
+ origin
+ description
+ favorite_count  <= can only be favorited by signed-in user that has not favorited it yet

##BABY_NAMES
+ id
# list_id
+ first_name => point to name object
+ middle_name => point to name object
#+ last_name = @user.baby_last_name

##LISTS
+ id
+ user_id
+ title
+ baby_name_ids = []
