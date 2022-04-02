# typed: strict

module KubeDSL
  module DSL
    module Networking
      module V1
        class NetworkPolicyEgressRule < ::KubeDSL::DSLObject
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
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Networking::V1::NetworkPolicyPort))
            ).returns(T::Array[KubeDSL::DSL::Networking::V1::NetworkPolicyPort])
          }
          def ports(elem_name = nil, &block); end

          sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Networking::V1::NetworkPolicyPeer))
            ).returns(T::Array[KubeDSL::DSL::Networking::V1::NetworkPolicyPeer])
          }
          def tos(elem_name = nil, &block); end
        end
      end
    end
  end
end