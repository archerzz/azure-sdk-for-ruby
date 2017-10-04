# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # Base Properties of an API Management service resource description.
    #
    class ApiManagementServiceBaseProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Email address from which the notification will be
      # sent.
      attr_accessor :notification_sender_email

      # @return [String] The current provisioning state of the API Management
      # service which can be one of the following:
      # Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
      attr_accessor :provisioning_state

      # @return [String] The provisioning state of the API Management service,
      # which is targeted by the long running operation started on the service.
      attr_accessor :target_provisioning_state

      # @return [DateTime] Creation UTC date of the API Management service.The
      # date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      attr_accessor :created_at_utc

      # @return [String] Gateway URL of the API Management service.
      attr_accessor :gateway_url

      # @return [String] Publisher portal endpoint Url of the API Management
      # service.
      attr_accessor :portal_url

      # @return [String] Management API endpoint URL of the API Management
      # service.
      attr_accessor :management_api_url

      # @return [String] SCM endpoint URL of the API Management service.
      attr_accessor :scm_url

      # @return [Array<HostnameConfiguration>] Custom hostname configuration of
      # the API Management service.
      attr_accessor :hostname_configurations

      # @return [Array<String>] Static IP addresses of the API Management
      # service virtual machines. Available only for Standard and Premium SKU.
      attr_accessor :static_ips

      # @return [VirtualNetworkConfiguration] Virtual network configuration of
      # the API Management service.
      attr_accessor :virtual_network_configuration

      # @return [Array<AdditionalLocation>] Additional datacenter locations of
      # the API Management service.
      attr_accessor :additional_locations

      # @return [Hash{String => String}] Custom properties of the API
      # Management service. Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168`
      # will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0,
      # 1.1 and 1.2). Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11`
      # can be used to disable just TLS 1.1 and setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10`
      # can be used to disable TLS 1.0 on an API Management service.
      attr_accessor :custom_properties

      # @return [Array<CertificateConfiguration>] List of Certificates that
      # need to be installed in the API Management service. Max supported
      # certificates that can be installed is 10.
      attr_accessor :certificates

      # @return [VirtualNetworkType] The type of VPN in which API Managemet
      # service needs to be configured in. None (Default Value) means the API
      # Management service is not part of any Virtual Network, External means
      # the API Management deployment is set up inside a Virtual Network having
      # an Internet Facing Endpoint, and Internal means that API Management
      # deployment is setup inside a Virtual Network having an Intranet Facing
      # Endpoint only. Possible values include: 'None', 'External', 'Internal'.
      # Default value: 'None' .
      attr_accessor :virtual_network_type


      #
      # Mapper for ApiManagementServiceBaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiManagementServiceBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceBaseProperties',
            model_properties: {
              notification_sender_email: {
                required: false,
                serialized_name: 'notificationSenderEmail',
                constraints: {
                  MaxLength: 100
                },
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              target_provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'targetProvisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at_utc: {
                required: false,
                read_only: true,
                serialized_name: 'createdAtUtc',
                type: {
                  name: 'DateTime'
                }
              },
              gateway_url: {
                required: false,
                read_only: true,
                serialized_name: 'gatewayUrl',
                type: {
                  name: 'String'
                }
              },
              portal_url: {
                required: false,
                read_only: true,
                serialized_name: 'portalUrl',
                type: {
                  name: 'String'
                }
              },
              management_api_url: {
                required: false,
                read_only: true,
                serialized_name: 'managementApiUrl',
                type: {
                  name: 'String'
                }
              },
              scm_url: {
                required: false,
                read_only: true,
                serialized_name: 'scmUrl',
                type: {
                  name: 'String'
                }
              },
              hostname_configurations: {
                required: false,
                serialized_name: 'hostnameConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HostnameConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostnameConfiguration'
                      }
                  }
                }
              },
              static_ips: {
                required: false,
                read_only: true,
                serialized_name: 'staticIps',
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
              virtual_network_configuration: {
                required: false,
                serialized_name: 'virtualNetworkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              additional_locations: {
                required: false,
                serialized_name: 'additionalLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AdditionalLocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalLocation'
                      }
                  }
                }
              },
              custom_properties: {
                required: false,
                serialized_name: 'customProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              certificates: {
                required: false,
                serialized_name: 'certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CertificateConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CertificateConfiguration'
                      }
                  }
                }
              },
              virtual_network_type: {
                required: false,
                serialized_name: 'virtualNetworkType',
                default_value: 'None',
                type: {
                  name: 'Enum',
                  module: 'VirtualNetworkType'
                }
              }
            }
          }
        }
      end
    end
  end
end
