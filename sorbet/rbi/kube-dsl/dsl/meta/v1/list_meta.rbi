# typed: strict

module KubeDSL
  module DSL
    module Meta
      module V1
        class ListMeta < ::KubeDSL::DSLObject
          sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          sig { returns(Symbol) }
          def kind_sym; end

          sig { params(val: T.nilable(String)).returns(String) }
          def continue(val = nil); end

          sig { params(val: T.nilable(Integer)).returns(Integer) }
          def remaining_item_count(val = nil); end

          sig { params(val: T.nilable(String)).returns(String) }
          def resource_version(val = nil); end

          sig { params(val: T.nilable(String)).returns(String) }
          def self_link(val = nil); end
        end
      end
    end
  end
end