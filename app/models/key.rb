class Key < ActiveRecord::Base
  attr_accessible :private_key_exponent, :private_key_modulus, :public_key_exponent, :public_key_modulus, :sp
end
