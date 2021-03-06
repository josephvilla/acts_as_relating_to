module ActsAsRelatingTo
  module ClassMethods
    module Base
      def acts_as_relating_to_base(class_sym, options={})
        if self < ActiveRecord::Base
          has_many :owned_relationships,
            as: :owner,
            class_name: "ActsAsRelatingTo::Relationship",
            dependent: :destroy
                                         
          has_many :referencing_relationships,
            as: :in_relation_to,
            class_name: "ActsAsRelatingTo::Relationship",
            dependent: :destroy          
        else
          poro_has_many :owned_relationships,
            as: :owner,
            class_name: "ActsAsRelatingTo::Relationship",
            dependent: :destroy
                                         
          poro_has_many :referencing_relationships,
            as: :in_relation_to,
            class_name: "ActsAsRelatingTo::Relationship",
            dependent: :destroy          
        end

        private :owned_relationships
        private :referencing_relationships

        methods_to_define = [
          :things_i_relate_to,
          :add_related_thing,
          :drop_relationship_to_thing,
          :things,
          :things_that_relate_to_me,
          #:invite_thing_to_relationship,
          #:received_relationship_invitations,
          #:sent_relationship_invitations,
          #:update_relationship_invitation,
          :relate_to_thing,
          :relates_to_thing,
          :stop_relating_to_thing,
          #:relationship_invitations_sent_to
        ]
        methods_to_define.each do |method_name|
          send "define_method_#{method_name}", class_sym, options
        end
        
      end

      private :acts_as_relating_to_base

    end
  end
end