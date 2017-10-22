local internetJson = require("internetJson")
local resquestUrl = "http://api.ipify.org/?format=json"

---Return public IP informaion
function getPublic()
    return internetJson.getResponse(resquestUrl);
end

