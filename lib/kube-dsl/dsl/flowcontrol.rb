module KubeDSL::DSL::Flowcontrol
  autoload :FlowDistinguisherMethod, 'kube-dsl/dsl/flowcontrol/flow_distinguisher_method'
  autoload :FlowSchema, 'kube-dsl/dsl/flowcontrol/flow_schema'
  autoload :FlowSchemaCondition, 'kube-dsl/dsl/flowcontrol/flow_schema_condition'
  autoload :FlowSchemaList, 'kube-dsl/dsl/flowcontrol/flow_schema_list'
  autoload :FlowSchemaSpec, 'kube-dsl/dsl/flowcontrol/flow_schema_spec'
  autoload :FlowSchemaStatus, 'kube-dsl/dsl/flowcontrol/flow_schema_status'
  autoload :GroupSubject, 'kube-dsl/dsl/flowcontrol/group_subject'
  autoload :LimitResponse, 'kube-dsl/dsl/flowcontrol/limit_response'
  autoload :LimitedPriorityLevelConfiguration, 'kube-dsl/dsl/flowcontrol/limited_priority_level_configuration'
  autoload :NonResourcePolicyRule, 'kube-dsl/dsl/flowcontrol/non_resource_policy_rule'
  autoload :PolicyRulesWithSubjects, 'kube-dsl/dsl/flowcontrol/policy_rules_with_subjects'
  autoload :PriorityLevelConfiguration, 'kube-dsl/dsl/flowcontrol/priority_level_configuration'
  autoload :PriorityLevelConfigurationCondition, 'kube-dsl/dsl/flowcontrol/priority_level_configuration_condition'
  autoload :PriorityLevelConfigurationList, 'kube-dsl/dsl/flowcontrol/priority_level_configuration_list'
  autoload :PriorityLevelConfigurationReference, 'kube-dsl/dsl/flowcontrol/priority_level_configuration_reference'
  autoload :PriorityLevelConfigurationSpec, 'kube-dsl/dsl/flowcontrol/priority_level_configuration_spec'
  autoload :PriorityLevelConfigurationStatus, 'kube-dsl/dsl/flowcontrol/priority_level_configuration_status'
  autoload :QueuingConfiguration, 'kube-dsl/dsl/flowcontrol/queuing_configuration'
  autoload :ResourcePolicyRule, 'kube-dsl/dsl/flowcontrol/resource_policy_rule'
  autoload :ServiceAccountSubject, 'kube-dsl/dsl/flowcontrol/service_account_subject'
  autoload :Subject, 'kube-dsl/dsl/flowcontrol/subject'
  autoload :UserSubject, 'kube-dsl/dsl/flowcontrol/user_subject'
end
