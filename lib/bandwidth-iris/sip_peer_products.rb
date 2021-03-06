module BandwidthIris
  SIPPEER_PRODUCTS_PATH = 'products'

  class SipPeerProducts
    extend ClientWrapper
    include ApiItem

    def self.get_origination_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/origination/settings")
      return response[0][:sip_peer_origination_settings]
    end
    wrap_client_arg :get_origination_settings

    def self.create_origination_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:post, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/origination/settings", {:sip_peer_origination_settings => data})
      return response[0][:sip_peer_origination_settings]
    end
    wrap_client_arg :create_origination_settings

    def self.update_origination_settings(client, site_id, sippeer_id, data)
      client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/origination/settings", {:sip_peer_origination_settings => data})
    end
    wrap_client_arg :update_origination_settings

    def self.get_termination_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/termination/settings")
      return response[0][:sip_peer_termination_settings]
    end
    wrap_client_arg :get_termination_settings

    def self.create_termination_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:post, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/termination/settings", {:sip_peer_termination_settings => data})
      return response[0][:sip_peer_termination_settings]
    end
    wrap_client_arg :create_termination_settings

    def self.update_termination_settings(client, site_id, sippeer_id, data)
      client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/termination/settings", {:sip_peer_termination_settings => data})
    end
    wrap_client_arg :update_termination_settings

    def self.get_sms_feature_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/sms")
      return response[0][:sip_peer_sms_feature]
    end
    wrap_client_arg :get_sms_feature_settings

    def self.create_sms_feature_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:post, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/sms", {:sip_peer_sms_feature => data})
      return response[0][:sip_peer_sms_feature]
    end
    wrap_client_arg :create_sms_feature_settings

    def self.update_sms_feature_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/sms", {:sip_peer_sms_feature => data})
      return response[0][:sip_peer_sms_feature]
    end
    wrap_client_arg :update_sms_feature_settings

    def self.delete_sms_feature_settings(client, site_id, sippeer_id)
      response = client.make_request(:delete, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/sms")
      return response
    end
    wrap_client_arg :delete_sms_feature_settings

    def self.get_mms_feature_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/mms")
      return response[0][:mms_feature]
    end
    wrap_client_arg :get_mms_feature_settings

    def self.create_mms_feature_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:post, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/mms", {:mms_feature => data})
      return response[0][:mms_feature]
    end
    wrap_client_arg :create_mms_feature_settings

    def self.update_mms_feature_settings(client, site_id, sippeer_id, data)
      client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/mms", {:mms_feature => data})
    end
    wrap_client_arg :update_mms_feature_settings

    def self.delete_mms_feature_settings(client, site_id, sippeer_id)
      client.make_request(:delete, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/mms")
    end
    wrap_client_arg :delete_mms_feature_settings

    def self.get_mms_feature_mms_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/features/mms/settings")
      return response[0][:mms_settings]
    end
    wrap_client_arg :get_mms_feature_mms_settings

    def self.get_messaging_application_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/applicationSettings")
      return response[0][:applications_settings]
    end
    wrap_client_arg :get_messaging_application_settings

    def self.update_messaging_application_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/applicationSettings", {:applications_settings => data})
      return response[0][:applications_settings]
    end
    wrap_client_arg :update_messaging_application_settings

    def self.get_messaging_settings(client, site_id, sippeer_id)
      response = client.make_request(:get, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/settings")
      return response[0][:sip_peer_messaging_settings]
    end
    wrap_client_arg :get_messaging_settings

    def self.update_messaging_settings(client, site_id, sippeer_id, data)
      response = client.make_request(:put, "#{client.concat_account_path(SITE_PATH)}/#{site_id}/#{SIPPEER_PATH}/#{sippeer_id}/#{SIPPEER_PRODUCTS_PATH}/messaging/settings", {:sip_peer_messaging_settings => data})
      return response[0][:sip_peer_messaging_settings]
    end
    wrap_client_arg :update_messaging_settings
  end
end
