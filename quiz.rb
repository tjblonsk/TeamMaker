my_name = "chris"

def say_my_name
  puts my_name
end

##returns nothing
#######

my_name = "chris"

def say_my_name
  puts my_name
end

say_my_name

##returns an error for 'undefined local variable'.
## my_name the variable isn't defined.
########

my_name = "chris"

def say_my_name(my_name)
  puts my_name
end
say_my_name

##requires an argument -- 'wrong number of arguments 0 for 1.'
#####

my_name = "chris"

def say_my_name(my_name)
  puts my_name
end

say_my_name(my_name)

#puts chris
######

my_name = "chris"

def say_my_name(potato)
  puts my_name
end

say_my_name(my_name)

## error because local variable is not defined.
#########

my_name = "Chris"

def say_my_name(potato)
  puts potato
end

say_my_name(my_name)

## returns Chris










