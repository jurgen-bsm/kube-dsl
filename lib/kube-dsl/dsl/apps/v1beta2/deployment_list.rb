# typed: true

module KubeDSL::DSL::Apps::V1beta2
  class DeploymentList < ::KubeDSL::DSLObject
    array_field(:item) { KubeDSL::DSL::Apps::V1beta2::Deployment.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    validates :items, array: { kind_of: KubeDSL::DSL::Apps::V1beta2::Deployment }, presence: false
    validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ListMeta }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "apps/v1beta2"
        result[:items] = items.map(&:serialize)
        result[:kind] = "DeploymentList"
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :deployment_list
    end
  end
end
