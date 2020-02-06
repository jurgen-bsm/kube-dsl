module KubeDSL::DSL::Admissionregistration
  class MutatingWebhookConfigurationList
    extend ::KubeDSL::ValueFields
    array_field(:item) { KubeDSL::DSL::Admissionregistration::MutatingWebhookConfiguration.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "admissionregistration.k8s.io/v1beta1"
        result[:kind] = "MutatingWebhookConfigurationList"
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
