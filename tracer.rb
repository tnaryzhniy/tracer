module Tracer
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def new(*)
      TracerClass.new(super)
    end
  end
end
