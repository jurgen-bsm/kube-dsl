# typed: strict

module KubeDSL
  module DSL
    module Rbac
      module V1alpha1
        class RoleBinding < ::KubeDSL::DSLObject
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



          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
          def metadata; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def metadata_present?; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Rbac::V1alpha1::RoleRef) }
          def role_ref; end
          
          T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
          def role_ref_present?; end

          T::Sig::WithoutRuntime.sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Rbac::V1alpha1::Subject))
            ).returns(T::Array[KubeDSL::DSL::Rbac::V1alpha1::Subject])
          }
          def subjects(elem_name = nil, &block); end
        end
      end
    end
  end
end