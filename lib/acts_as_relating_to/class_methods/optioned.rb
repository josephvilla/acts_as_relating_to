module ActsAsRelatingTo
  module ClassMethods
    module Optioned
      def acts_as_relating_to_optioned(spec)
        puts "in #{self}.#{__method__}, spec: #{spec}"
        options = spec.pop
        class_sym = spec[0]
        acts_as_relating_to_base class_sym, options
      end
    end
  end
end