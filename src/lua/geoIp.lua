local json = require( "json" ) 

local internet = require("internet")
local handle = internet.request("http://api.ipify.org/?format=json")
local response;

function getResponse(con)
  local response = "";
  for chunk in con do
    response = response..chunk
  end
  return json:decode(response)
end

response = getResponse(handle); 

print(response.ip)

handle = internet.request("http://ip-api.com/json")

response = getResponse(handle)

print("as: "..response.as)

print("city: "..response.city)

print("country: "..response.country)

print("countryCode: "..response.countryCode)

print("isp: "..response.isp)

print("lat: "..response.lat)

print("lon: "..response.lon)

print("org: "..response.org)

print("query: "..response.query)

print("region: "..response.region)

print("regionName: "..response.regionName)

print("status: "..response.status)

print("timezone: "..response.timezone)
