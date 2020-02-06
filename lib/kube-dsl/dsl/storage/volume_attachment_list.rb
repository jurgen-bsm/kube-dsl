module KubeDSL::DSL::Storage
  class VolumeAttachmentList
    extend ::KubeDSL::ValueFields
    array_field(:item) { KubeDSL::DSL::Storage::VolumeAttachment.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "storage.k8s.io/v1beta1"
        result[:kind] = "VolumeAttachmentList"
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end
  end
end
