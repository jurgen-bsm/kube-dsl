module KubeDSL::DSL::Apps
  class StatefulSetSpec
    extend ::KubeDSL::ValueFields
    value_fields :pod_management_policy, :replicas, :revision_history_limit, :service_name
    array_field(:volume_claim_template) { KubeDSL::DSL::PersistentVolumeClaim.new }
    object_field(:selector) { KubeDSL::DSL::Meta::LabelSelector.new }
    object_field(:template) { KubeDSL::DSL::PodTemplateSpec.new }
    object_field(:update_strategy) { KubeDSL::DSL::Apps::StatefulSetUpdateStrategy.new }

    def serialize
      {}.tap do |result|
        result[:podManagementPolicy] = pod_management_policy
        result[:replicas] = replicas
        result[:revisionHistoryLimit] = revision_history_limit
        result[:serviceName] = service_name
        result[:volumeClaimTemplates] = volume_claim_templates.map(&:serialize)
        result[:selector] = selector.serialize
        result[:template] = template.serialize
        result[:updateStrategy] = update_strategy.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
