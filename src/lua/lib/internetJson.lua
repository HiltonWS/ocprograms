local json = require( "json" )
local internet = require("internet")

local OBJDEF = {};

---Return JSON response from request
function OBJDEF.getResponse(url, data, headers)
    local handle = internet.request(url, data, headers)
    local response = '';
    for chunk in handle do
        response = response..chunk;
    end

    return json.decode(response)
end

return OBJDEF