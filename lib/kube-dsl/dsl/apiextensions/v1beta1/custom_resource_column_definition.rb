# typed: true

module KubeDSL::DSL::Apiextensions::V1beta1
  class CustomResourceColumnDefinition < ::KubeDSL::DSLObject
    value_field :json_path
    value_field :description
    value_field :format
    value_field :name
    value_field :priority
    value_field :type

    validates :json_path, field: { format: :string }, presence: false
    validates :description, field: { format: :string }, presence: false
    validates :format, field: { format: :string }, presence: false
    validates :name, field: { format: :string }, presence: false
    validates :priority, field: { format: :integer }, presence: false
    validates :type, field: { format: :string }, presence: false

    def serialize
      {}.tap do |result|
        result[:JSONPath] = json_path
        result[:description] = description
        result[:format] = format
        result[:name] = name
        result[:priority] = priority
        result[:type] = type
      end
    end

    def kind_sym
      :custom_resource_column_definition
    end
  end
end
