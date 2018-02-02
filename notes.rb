latitude = 36.879621
longitude = -101.777344
geo_localization = "#{latitude},#{longitude}"
query = Geocoder.search(geo_localization).first
query.address