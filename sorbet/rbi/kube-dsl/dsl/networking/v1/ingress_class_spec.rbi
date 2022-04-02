# typed: strict

module KubeDSL
  module DSL
    module Networking
      module V1
        class IngressClassSpec < ::KubeDSL::DSLObject
          sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          sig { returns(Symbol) }
          def kind_sym; end

          sig { params(val: T.nilable(String)).returns(String) }
          def controller(val = nil); end

          sig { returns(KubeDSL::DSL::Networking::V1::IngressClassParametersReference) }
          def parameters; end
        end
      end
    end
  end
end