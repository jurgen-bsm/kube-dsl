module KubeDSL::DSL::Networking
  autoload :IPBlock, 'kube-dsl/dsl/networking/ip_block'
  autoload :NetworkPolicy, 'kube-dsl/dsl/networking/network_policy'
  autoload :NetworkPolicyEgressRule, 'kube-dsl/dsl/networking/network_policy_egress_rule'
  autoload :NetworkPolicyIngressRule, 'kube-dsl/dsl/networking/network_policy_ingress_rule'
  autoload :NetworkPolicyList, 'kube-dsl/dsl/networking/network_policy_list'
  autoload :NetworkPolicyPeer, 'kube-dsl/dsl/networking/network_policy_peer'
  autoload :NetworkPolicyPort, 'kube-dsl/dsl/networking/network_policy_port'
  autoload :NetworkPolicySpec, 'kube-dsl/dsl/networking/network_policy_spec'
  autoload :HTTPIngressPath, 'kube-dsl/dsl/networking/http_ingress_path'
  autoload :HTTPIngressRuleValue, 'kube-dsl/dsl/networking/http_ingress_rule_value'
  autoload :Ingress, 'kube-dsl/dsl/networking/ingress'
  autoload :IngressBackend, 'kube-dsl/dsl/networking/ingress_backend'
  autoload :IngressList, 'kube-dsl/dsl/networking/ingress_list'
  autoload :IngressRule, 'kube-dsl/dsl/networking/ingress_rule'
  autoload :IngressSpec, 'kube-dsl/dsl/networking/ingress_spec'
  autoload :IngressStatus, 'kube-dsl/dsl/networking/ingress_status'
  autoload :IngressTLS, 'kube-dsl/dsl/networking/ingress_tls'
end
