import OAuth2PasswordGrant from 'ember-simple-auth/authenticators/oauth2-password-grant';
import config from '../config/environment';
import Ember from 'ember';

const { RSVP, isEmpty, run } = Ember;

export default OAuth2PasswordGrant.extend({
	serverTokenEndpoint: config.apiHost + '/o/token/',
	makeRequest(url, data) {
		const options = {
			url,
			data,
			type:        'POST',
			dataType:    'json',
			contentType: 'application/x-www-form-urlencoded',
			beforeSend: function (xhr) {
			    xhr.setRequestHeader("Authorization", "Basic " + 
			    	btoa(config.clientId + ":" + config.secret));
			}
		};
		const clientId = this.get('clientId');

		if (!isEmpty(clientId)) {
			const base64ClientId = window.btoa(clientId.concat(':'));
			Ember.merge(options, {
				headers: {
					Authorization: `Basic ${base64ClientId}`
				}
			});
		}

		return Ember.$.ajax(options);
  	}
});