

-- nnoremap <localleader>R <cmd>FlutterRun --web-port=42069 --debug<cr>
-- nnoremap <localleader>r <cmd>FlutterReload<cr>
-- nnoremap <localleader>s <cmd>FlutterRestart<cr>
-- nnoremap <localleader>q <cmd>FlutterQuit<cr>
-- nnoremap <localleader>d <cmd>FlutterDevices<cr>
-- nnoremap <localleader>e <cmd>FlutterEmulators<cr>
-- nnoremap <localleader>c <cmd>FlutterLogClear<cr>
-- nnoremap <localleader>l <cmd>:buffer __FLUTTER_DEV_LOG__<cr>

 
local map_f = function(key, cmd)
  mapx('n', '<localleader>' .. key, 'Flutter' .. cmd)
end

map_f('R', 'Run --web-port=42069')
map_f('r', 'Reload')
map_f('s', 'Restart')
map_f('q', 'Quit')
map_f('d', 'Devices')
map_f('e', 'Emulators')
map_f('c', 'LogClear')
  mapx('l', '<localleader>l', 'buffer __FLUTTER_DEV_LOG__')
