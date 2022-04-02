# typed: strict

module KubeDSL
  module DSL
    module V1
      class LoadBalancerIngress < ::KubeDSL::DSLObject
        sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        sig { returns(Symbol) }
        def kind_sym; end

        sig { params(val: T.nilable(String)).returns(String) }
        def hostname(val = nil); end

        sig { params(val: T.nilable(String)).returns(String) }
        def ip(val = nil); end

        sig {
          params(
            elem_name: T.nilable(Symbol),
            block: T.nilable(T.proc.returns(KubeDSL::DSL::V1::PortStatus))
          ).returns(T::Array[KubeDSL::DSL::V1::PortStatus])
        }
        def ports(elem_name = nil, &block); end
      end
    end
  end
end