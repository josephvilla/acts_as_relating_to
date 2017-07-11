module ActsAsRelatingTo
  module DefineMethods
    module SentRelationshipInvitations
      def define_method_sent_relationship_invitations(class_sym, options={})
        if options[:remote]
          define_method_sent_relationship_invitations_remote class_sym, options
        else
          define_method_sent_relationship_invitations_local class_sym, options
        end
      end
    end
  end
end