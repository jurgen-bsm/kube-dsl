# typed: strict

module KubeDSL
  module DSL
    module Apps
      module V1
        class DaemonSetSpec < ::KubeDSL::DSLObject
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

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
          def min_ready_seconds(val = nil); end

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
          def revision_history_limit(val = nil); end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::LabelSelector) }
          def selector; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def selector_present?; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::V1::PodTemplateSpec) }
          def template; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def template_present?; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Apps::V1::DaemonSetUpdateStrategy) }
          def update_strategy; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def update_strategy_present?; end
        end
      end
    end
  end
end