# typed: strict

module KubeDSL
  module DSL
    module Coordination
      module V1
        class LeaseList < ::KubeDSL::DSLObject
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
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Coordination::V1::Lease))
            ).returns(T::Array[KubeDSL::DSL::Coordination::V1::Lease])
          }
          def items(elem_name = nil, &block); end


          sig { returns(KubeDSL::DSL::Meta::V1::ListMeta) }
          def metadata; end
        end
      end
    end
  end
end