//ASYNC HTTP event of obj_Server//

if gpt_enabled = true {

handleDebugMessage("[SERVER ASYNC] "+json_stringify(async_load), true)

var _size = ds_map_size(async_load)
var _key = ds_map_find_first(async_load)
for (var i = 0; i < _size; i++;) {
	handleDebugMessage(json_stringify(async_load[? _key]), true)
	_key = ds_map_find_next(async_load,_key)
}
}