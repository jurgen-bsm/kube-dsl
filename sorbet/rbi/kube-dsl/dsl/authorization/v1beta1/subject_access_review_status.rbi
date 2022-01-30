# typed: strict

module KubeDSL::DSL::Authorization::V1beta1
  class SubjectAccessReviewStatus < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
    def allowed(val = nil); end

    sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
    def denied(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def evaluation_error(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def reason(val = nil); end

  end
end
