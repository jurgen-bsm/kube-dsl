# typed: strict

module KubeDSL
  module DSL
    module Autoscaling
      module V2
        class HorizontalPodAutoscalerSpec < ::KubeDSL::DSLObject
          extend KubeDSL::ValueFields::ClassMethods
          extend KubeDSL::Validations::ClassMethods
          include KubeDSL::ValueFields::InstanceMethods

          T::Sig::WithoutRuntime.sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          T::Sig::WithoutRuntime.sig { returns(Symbol) }
          def kind_sym; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2::HorizontalPodAutoscalerBehavior) }
          def behavior; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def behavior_present?; end

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
          def max_replicas(val = nil); end

          T::Sig::WithoutRuntime.sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Autoscaling::V2::MetricSpec))
            ).returns(T::Array[KubeDSL::DSL::Autoscaling::V2::MetricSpec])
          }
          def metrics(elem_name = nil, &block); end

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
          def min_replicas(val = nil); end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2::CrossVersionObjectReference) }
          def scale_target_ref; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def scale_target_ref_present?; end
        end
      end
    end
  end
end