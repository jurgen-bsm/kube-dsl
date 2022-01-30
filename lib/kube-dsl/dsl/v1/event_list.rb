# typed: true

module KubeDSL::DSL::V1
  class EventList < ::KubeDSL::DSLObject
    array_field(:item) { KubeDSL::DSL::V1::Event.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    validates :items, array: { kind_of: KubeDSL::DSL::V1::Event }, presence: false
    validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ListMeta }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "v1"
        result[:items] = items.map(&:serialize)
        result[:kind] = "EventList"
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :event_list
    end
  end
end
