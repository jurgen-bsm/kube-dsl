# typed: strict

module KubeDSL
  module DSL
    module Autoscaling
      module V2beta2
        class MetricIdentifier < ::KubeDSL::DSLObject
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

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
          def name(val = nil); end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::LabelSelector) }
          def selector; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def selector_present?; end
        end
      end
    end
  end
end