module Puppet::Parser::Functions
  newfunction(:mangle_hash, :type => :rvalue) do |args|
    Hash[ args[0].collect { |key,value| [key, {:value => value}] } ]
  end
end
