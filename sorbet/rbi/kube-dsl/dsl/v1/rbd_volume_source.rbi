# typed: strict

module KubeDSL
  module DSL
    module V1
      class RBDVolumeSource < ::KubeDSL::DSLObject
        sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        sig { returns(Symbol) }
        def kind_sym; end

        sig { params(val: T.nilable(String)).returns(String) }
        def fs_type(val = nil); end

        sig { params(val: T.nilable(String)).returns(String) }
        def image(val = nil); end

        sig { params(val: T.nilable(String)).returns(String) }
        def keyring(val = nil); end

        sig { params(val: T.nilable(String)).returns(String) }
        def monitors(val = nil); end

        sig { params(val: T.nilable(String)).returns(String) }
        def pool(val = nil); end

        sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
        def read_only(val = nil); end

        sig { returns(KubeDSL::DSL::V1::LocalObjectReference) }
        def secret_ref; end

        sig { params(val: T.nilable(String)).returns(String) }
        def user(val = nil); end
      end
    end
  end
end