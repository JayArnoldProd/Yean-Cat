/// CREATE event of obj_GPT

var API_KEY = "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"
var _headers = ds_map_create();
ds_map_add(_headers, "Host", "https://api.openai.com/v1/chat/completions");
ds_map_add(_headers, "Authorization", "Bearer "+API_KEY);
ds_map_add(_headers, "Content-Type", "application/json");
var _data = {
     "model": "gpt-3.5-turbo",
     "prompt": "Say this is a test",
     "temperature": 0.7
   }

var data = json_stringify(_data)

request = http_request("https://api.openai.com/v1/chat/completions", "POST", _headers, data);
ds_map_destroy(_headers);

handleDebugMessage("RequestSent",true);
handleDebugMessage(request,true);