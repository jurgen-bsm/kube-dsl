module KubeDSL::DSL
  class CSIVolumeSource
    extend ::KubeDSL::ValueFields
    value_fields :driver, :fs_type, :read_only
    object_field(:node_publish_secret_ref) { KubeDSL::DSL::LocalObjectReference.new }
    object_field(:volume_attributes) { ::KubeDSL::KeyValueFields.new }

    def serialize
      {}.tap do |result|
        result[:driver] = driver
        result[:fsType] = fs_type
        result[:readOnly] = read_only
        result[:nodePublishSecretRef] = node_publish_secret_ref.serialize
        result[:volumeAttributes] = volume_attributes.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
