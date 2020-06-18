module KubeDSL::DSL::Apps::V1beta2
  class ScaleStatus < ::KubeDSL::DSLObject
    value_fields :replicas, :target_selector
    key_value_field(:selector, format: :string)

    def serialize
      {}.tap do |result|
        result[:replicas] = replicas
        result[:targetSelector] = target_selector
        result[:selector] = selector.serialize
      end
    end

    def kind_sym
      :scale_status
    end
  end
end
