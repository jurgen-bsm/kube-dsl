# typed: strict

module KubeDSL::DSL::Extensions::V1beta1
  class IngressRule < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(String)).returns(String) }
    def host(val = nil); end

    sig { returns(KubeDSL::DSL::Extensions::V1beta1::HTTPIngressRuleValue) }
    def http; end

  end
end
