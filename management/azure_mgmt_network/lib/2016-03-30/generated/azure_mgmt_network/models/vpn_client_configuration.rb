# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_03_30
  module Models
    #
    # VpnClientConfiguration for P2S client
    #
    class VpnClientConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [AddressSpace] Gets or sets the reference of the Address space
      # resource which represents Address space for P2S VpnClient.
      attr_accessor :vpn_client_address_pool

      # @return [Array<VpnClientRootCertificate>] VpnClientRootCertificate for
      # Virtual network gateway.
      attr_accessor :vpn_client_root_certificates

      # @return [Array<VpnClientRevokedCertificate>]
      # VpnClientRevokedCertificate for Virtual network gateway.
      attr_accessor :vpn_client_revoked_certificates


      #
      # Mapper for VpnClientConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VpnClientConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VpnClientConfiguration',
            model_properties: {
              vpn_client_address_pool: {
                required: false,
                serialized_name: 'vpnClientAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              vpn_client_root_certificates: {
                required: false,
                serialized_name: 'vpnClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_revoked_certificates: {
                required: false,
                serialized_name: 'vpnClientRevokedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnClientRevokedCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRevokedCertificate'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
