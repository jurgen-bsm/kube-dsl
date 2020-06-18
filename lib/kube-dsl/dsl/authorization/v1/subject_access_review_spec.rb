module KubeDSL::DSL::Authorization::V1
  class SubjectAccessReviewSpec < ::KubeDSL::DSLObject
    value_fields :groups, :uid, :user
    object_field(:non_resource_attributes) { KubeDSL::DSL::Authorization::V1::NonResourceAttributes.new }
    object_field(:resource_attributes) { KubeDSL::DSL::Authorization::V1::ResourceAttributes.new }
    key_value_field(:extra, format: :string)

    def serialize
      {}.tap do |result|
        result[:groups] = groups
        result[:uid] = uid
        result[:user] = user
        result[:nonResourceAttributes] = non_resource_attributes.serialize
        result[:resourceAttributes] = resource_attributes.serialize
        result[:extra] = extra.serialize
      end
    end

    def kind_sym
      :subject_access_review_spec
    end
  end
end
