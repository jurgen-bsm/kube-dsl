module KubeDSL::DSL::Extensions
  class SELinuxStrategyOptions
    extend ::KubeDSL::ValueFields
    value_fields :rule
    object_field(:se_linux_options) { KubeDSL::DSL::SELinuxOptions.new }

    def serialize
      {}.tap do |result|
        result[:rule] = rule
        result[:seLinuxOptions] = se_linux_options.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
