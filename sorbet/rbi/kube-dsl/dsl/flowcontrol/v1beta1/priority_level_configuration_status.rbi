# typed: strict

module KubeDSL
  module DSL
    module Flowcontrol
      module V1beta1
        class PriorityLevelConfigurationStatus < ::KubeDSL::DSLObject
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

          T::Sig::WithoutRuntime.sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition))
            ).returns(T::Array[KubeDSL::DSL::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition])
          }
          def conditions(elem_name = nil, &block); end
        end
      end
    end
  end
end