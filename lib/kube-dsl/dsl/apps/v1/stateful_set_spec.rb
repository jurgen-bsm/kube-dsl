# typed: true

module KubeDSL
  module DSL
    module Apps
      module V1
        class StatefulSetSpec < ::KubeDSL::DSLObject
          value_field :min_ready_seconds
          object_field(:persistent_volume_claim_retention_policy) { KubeDSL::DSL::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy.new }
          value_field :pod_management_policy
          value_field :replicas
          value_field :revision_history_limit
          object_field(:selector) { KubeDSL::DSL::Meta::V1::LabelSelector.new }
          value_field :service_name
          object_field(:template) { KubeDSL::DSL::V1::PodTemplateSpec.new }
          object_field(:update_strategy) { KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy.new }
          array_field(:volume_claim_template) { KubeDSL::DSL::V1::PersistentVolumeClaim.new }

          validates :min_ready_seconds, field: { format: :integer }, presence: false
          validates :persistent_volume_claim_retention_policy, object: { kind_of: KubeDSL::DSL::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy }
          validates :pod_management_policy, field: { format: :string }, presence: false
          validates :replicas, field: { format: :integer }, presence: false
          validates :revision_history_limit, field: { format: :integer }, presence: false
          validates :selector, object: { kind_of: KubeDSL::DSL::Meta::V1::LabelSelector }
          validates :service_name, field: { format: :string }, presence: false
          validates :template, object: { kind_of: KubeDSL::DSL::V1::PodTemplateSpec }
          validates :update_strategy, object: { kind_of: KubeDSL::DSL::Apps::V1::StatefulSetUpdateStrategy }
          validates :volume_claim_templates, array: { kind_of: KubeDSL::DSL::V1::PersistentVolumeClaim }, presence: false

          def serialize
            {}.tap do |result|
              result[:minReadySeconds] = min_ready_seconds
              result[:persistentVolumeClaimRetentionPolicy] = persistent_volume_claim_retention_policy.serialize
              result[:podManagementPolicy] = pod_management_policy
              result[:replicas] = replicas
              result[:revisionHistoryLimit] = revision_history_limit
              result[:selector] = selector.serialize
              result[:serviceName] = service_name
              result[:template] = template.serialize
              result[:updateStrategy] = update_strategy.serialize
              result[:volumeClaimTemplates] = volume_claim_templates.map(&:serialize)
            end
          end

          def kind_sym
            :stateful_set_spec
          end
        end
      end
    end
  end
end