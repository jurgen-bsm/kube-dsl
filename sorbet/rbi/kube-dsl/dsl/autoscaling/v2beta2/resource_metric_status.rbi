# typed: strict

module KubeDSL::DSL::Autoscaling::V2beta2
  class ResourceMetricStatus < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { returns(KubeDSL::DSL::Autoscaling::V2beta2::MetricValueStatus) }
    def current; end

    sig { params(val: T.nilable(String)).returns(String) }
    def name(val = nil); end

  end
end
