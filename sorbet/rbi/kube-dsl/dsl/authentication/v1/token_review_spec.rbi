# typed: strict

module KubeDSL::DSL::Authentication::V1
  class TokenReviewSpec < ::KubeDSL::DSLObject
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

    sig { params(val: T.nilable(String)).returns(String) }
    def token(val = nil); end

  end
end
