# typed: strict

module KubeDSL
  module DSL
    module Authentication
      module V1
        class TokenRequestSpec < ::KubeDSL::DSLObject
          sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          sig { returns(Symbol) }
          def kind_sym; end

          sig { params(val: T.nilable(String)).returns(String) }
          def audiences(val = nil); end

          sig { returns(KubeDSL::DSL::Authentication::V1::BoundObjectReference) }
          def bound_object_ref; end

          sig { params(val: T.nilable(Integer)).returns(Integer) }
          def expiration_seconds(val = nil); end
        end
      end
    end
  end
end