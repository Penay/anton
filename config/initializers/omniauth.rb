OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  
  #provider :twitter, 'vkRLc1zERI2dpNG3yHaWw', 'ndLZDhmbQq68fQ39Ykw9V4GLlikZT2LTr5ZP8pUZA', scope: 'publish_stream'
  provider :linkedin, 'w8hwk2ko48ka', 'mwesf2OwoZ16rRJx'

  provider :facebook, '438139736242414', '0b65edeba15dfe4800ca807d0b65101c'

  provider :vkontakte, '3222045' , 'YozhXKOuj3utdbGaTU94'

  provider :twitter, 'vkRLc1zERI2dpNG3yHaWw', 'ndLZDhmbQq68fQ39Ykw9V4GLlikZT2LTr5ZP8pUZA'

  provider :google_oauth2, '589494611732.apps.googleusercontent.com', 'pfxmBTpMY92Up2QzBJG9UDpp'

end

