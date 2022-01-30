# typed: true

module KubeDSL::DSL::Authorization::V1beta1
  class NonResourceAttributes < ::KubeDSL::DSLObject
    value_field :path
    value_field :verb

    validates :path, field: { format: :string }, presence: false
    validates :verb, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:path] = path
        result[:verb] = verb
      end
    end

    def kind_sym
      :non_resource_attributes
    end
  end
end
