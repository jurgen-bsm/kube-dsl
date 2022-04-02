# typed: strict

module KubeDSL
  module DSL
    module V1
      class ServiceStatus < ::KubeDSL::DSLObject
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
            block: T.nilable(T.proc.returns(KubeDSL::DSL::Meta::V1::Condition))
          ).returns(T::Array[KubeDSL::DSL::Meta::V1::Condition])
        }
        def conditions(elem_name = nil, &block); end

        sig { returns(KubeDSL::DSL::V1::LoadBalancerStatus) }
        def load_balancer; end
      end
    end
  end
end