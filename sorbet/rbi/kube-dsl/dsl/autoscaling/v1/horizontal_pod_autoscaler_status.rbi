# typed: strict

module KubeDSL::DSL::Autoscaling::V1
  class HorizontalPodAutoscalerStatus < ::KubeDSL::DSLObject
    sig {
      returns(
        T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
      )
    }
    def serialize; end

    sig { returns(Symbol) }
    def kind_sym; end

    sig { params(val: T.nilable(Integer)).returns(Integer) }
    def current_cpu_utilization_percentage(val = nil); end

    sig { params(val: T.nilable(Integer)).returns(Integer) }
    def current_replicas(val = nil); end

    sig { params(val: T.nilable(Integer)).returns(Integer) }
    def desired_replicas(val = nil); end

    sig { params(val: T.nilable(String)).returns(String) }
    def last_scale_time(val = nil); end

    sig { params(val: T.nilable(Integer)).returns(Integer) }
    def observed_generation(val = nil); end

  end
end
