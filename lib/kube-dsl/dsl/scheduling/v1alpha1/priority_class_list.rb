# typed: true

module KubeDSL::DSL::Scheduling::V1alpha1
  class PriorityClassList < ::KubeDSL::DSLObject
    array_field(:item) { KubeDSL::DSL::Scheduling::V1alpha1::PriorityClass.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    validates :items, array: { kind_of: KubeDSL::DSL::Scheduling::V1alpha1::PriorityClass }, presence: false
    validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ListMeta }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "scheduling.k8s.io/v1alpha1"
        result[:items] = items.map(&:serialize)
        result[:kind] = "PriorityClassList"
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :priority_class_list
    end
  end
end
