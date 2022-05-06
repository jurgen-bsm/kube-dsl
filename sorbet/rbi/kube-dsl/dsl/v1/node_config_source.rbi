# typed: strict

module KubeDSL
  module DSL
    module V1
      class NodeConfigSource < ::KubeDSL::DSLObject
        extend KubeDSL::ValueFields::ClassMethods
        extend KubeDSL::Validations::ClassMethods
        include KubeDSL::ValueFields::InstanceMethods

        T::Sig::WithoutRuntime.sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        T::Sig::WithoutRuntime.sig { returns(Symbol) }
        def kind_sym; end

        T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::V1::ConfigMapNodeConfigSource) }
        def config_map; end
        
        T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
        def config_map_present?; end
      end
    end
  end
end