# typed: true

module KubeDSL::DSL::Authorization::V1beta1
  class SubjectAccessReviewSpec < ::KubeDSL::DSLObject
    key_value_field(:extra, format: :string)
    value_field :group
    object_field(:non_resource_attributes) { KubeDSL::DSL::Authorization::V1beta1::NonResourceAttributes.new }
    object_field(:resource_attributes) { KubeDSL::DSL::Authorization::V1beta1::ResourceAttributes.new }
    value_field :uid
    value_field :user

    validates :extra, kv: { value_format: :string }, presence: false
    validates :group, field: { format: :string }, presence: false
    validates :non_resource_attributes, object: { kind_of: KubeDSL::DSL::Authorization::V1beta1::NonResourceAttributes }
    validates :resource_attributes, object: { kind_of: KubeDSL::DSL::Authorization::V1beta1::ResourceAttributes }
    validates :uid, field: { format: :string }, presence: false
    validates :user, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:extra] = extra.serialize
        result[:group] = group
        result[:nonResourceAttributes] = non_resource_attributes.serialize
        result[:resourceAttributes] = resource_attributes.serialize
        result[:uid] = uid
        result[:user] = user
      end
    end

    def kind_sym
      :subject_access_review_spec
    end
  end
end
