module Kernel
  # Standard in ruby 1.9.
  def require_relative(relative_feature)
    # Adapted from Pragmatic's "Programming Ruby" (since their version was buggy...)
    file = caller.first.split(/:\d/,2).first
    if /\A\((.*)\)/ =~ file # eval, etc. 
      raise LoadError, "require_relative is called in #{$1}" 
    end 
    require File.expand_path(relative_feature, File.dirname(file))
  end unless method_defined? :require_relative
end

class Array
  # Standard in rails, and we use it in module.
  def extract_options!
    last.is_a?(::Hash) ? pop : {}
  end unless method_defined? :extract_options!
end

%w(object module kernel object_space array enumerable enumerator string symbol integer fixnum hash proc binding dir io method regexp struct).each do |lib|
  require_relative "backports/#{lib}"
end