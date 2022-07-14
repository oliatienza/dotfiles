function drb --wraps='dart run build_runner build --delete-conflicting-outputs' --description 'alias drb=dart run build_runner build --delete-conflicting-outputs'
  dart run build_runner build --delete-conflicting-outputs $argv; 
end
