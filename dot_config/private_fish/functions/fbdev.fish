function fbdev --wraps='firebase use dev' --description 'alias fbdev=firebase use dev'
  firebase use dev $argv; 
end
