function fbprod --wraps='firebase use prod' --description 'alias fbprod=firebase use prod'
  firebase use prod $argv; 
end
