module KubeDSL::DSL::Policy
  class PodDisruptionBudget
    extend ::KubeDSL::ValueFields
    object_field(:metadata) { KubeDSL::DSL::Meta::ObjectMeta.new }
    object_field(:spec) { KubeDSL::DSL::Policy::PodDisruptionBudgetSpec.new }
    object_field(:status) { KubeDSL::DSL::Policy::PodDisruptionBudgetStatus.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "policy/v1beta1"
        result[:kind] = "PodDisruptionBudget"
        result[:metadata] = metadata.serialize
        result[:spec] = spec.serialize
        result[:status] = status.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
