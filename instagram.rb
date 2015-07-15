require "instagram"

client = Instagram.client(:access_token => "1591756528.467ede5.7469a2fdbbdf463ebb9ec7f8ca79c1d3")  
user = client.user
for media_item in client.user_recent_media
    print media_item.images.thumbnail.url
end