function drw --wraps='dart run build_runner watch --delete-conflicting-outputs' --description 'alias drw=dart run build_runner watch --delete-conflicting-outputs'
  dart run build_runner watch --delete-conflicting-outputs $argv; 
end
