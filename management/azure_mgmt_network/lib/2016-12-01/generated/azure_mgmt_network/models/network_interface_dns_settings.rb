# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_12_01
  module Models
    #
    # DNS settings of a network interface.
    #
    class NetworkInterfaceDnsSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] List of DNS servers IP addresses. Use
      # 'AzureProvidedDNS' to switch to azure provided DNS resolution.
      # 'AzureProvidedDNS' value cannot be combined with other IPs, it must be
      # the only value in dnsServers collection.
      attr_accessor :dns_servers

      # @return [Array<String>] If the VM that uses this NIC is part of an
      # Availability Set, then this list will have the union of all DNS servers
      # from all NICs that are part of the Availability Set. This property is
      # what is configured on each of those VMs.
      attr_accessor :applied_dns_servers

      # @return [String] Relative DNS name for this NIC used for internal
      # communications between VMs in the same virtual network.
      attr_accessor :internal_dns_name_label

      # @return [String] Fully qualified DNS name supporting internal
      # communications between VMs in the same virtual network.
      attr_accessor :internal_fqdn

      # @return [String] Even if internalDnsNameLabel is not specified, a DNS
      # entry is created for the primary NIC of the VM. This DNS name can be
      # constructed by concatenating the VM name with the value of
      # internalDomainNameSuffix.
      attr_accessor :internal_domain_name_suffix


      #
      # Mapper for NetworkInterfaceDnsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkInterfaceDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceDnsSettings',
            model_properties: {
              dns_servers: {
                required: false,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              applied_dns_servers: {
                required: false,
                serialized_name: 'appliedDnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              internal_dns_name_label: {
                required: false,
                serialized_name: 'internalDnsNameLabel',
                type: {
                  name: 'String'
                }
              },
              internal_fqdn: {
                required: false,
                serialized_name: 'internalFqdn',
                type: {
                  name: 'String'
                }
              },
              internal_domain_name_suffix: {
                required: false,
                serialized_name: 'internalDomainNameSuffix',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
