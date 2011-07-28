module Puppet::Parser::Functions
  newfunction(:substitute, :type => :rvalue) do |args|
    string = args[0]
    pattern = args[1]
    replacement = args[2]
    string.gsub(pattern, replacement)
  end
end
