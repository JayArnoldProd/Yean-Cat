//ASYNC HTTP event of obj_GPT//

handleDebugMessage("[SERVER ASYNC] "+async_load, true)

var _size = ds_map_size(async_load)
var _key = ds_map_find_first(async_load)
for (var i = 0; i < _size; i++;) {
	handleDebugMessage(async_load[? _key], true)
	_key = ds_map_find_next(async_load,_key)
}