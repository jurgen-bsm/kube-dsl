# typed: strict

module KubeDSL
  module DSL
    module Flowcontrol
      module V1beta1
        class FlowSchemaStatus < ::KubeDSL::DSLObject
          sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          sig { returns(Symbol) }
          def kind_sym; end

          sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Flowcontrol::V1beta1::FlowSchemaCondition))
            ).returns(T::Array[KubeDSL::DSL::Flowcontrol::V1beta1::FlowSchemaCondition])
          }
          def conditions(elem_name = nil, &block); end
        end
      end
    end
  end
end