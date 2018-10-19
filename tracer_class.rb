class TracerClass
  def initialize(obj)
    @obj = obj
  end

  def method_missing(method, *args)
    STDERR.puts "#{@obj.class.to_s} #<#{@obj.object_id}> #{method.to_s} (#{args.join(", ")})"
    @obj.__send__(method, *args)
  end
end
