module TD::Types
  # Contains full information about a basic group.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Chat photo; may be null.
  # @attr description [TD::Types::String] Group description.
  # @attr creator_user_id [Integer] User identifier of the creator of the group; 0 if unknown.
  # @attr members [Array<TD::Types::ChatMember>] Group members.
  # @attr invite_link [TD::Types::String] Invite link for this group; available only after it has been generated at
  #   least once and only for the group creator.
  class BasicGroupFullInfo < Base
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :description, TD::Types::String
    attribute :creator_user_id, TD::Types::Coercible::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatMember)
    attribute :invite_link, TD::Types::String
  end
end
