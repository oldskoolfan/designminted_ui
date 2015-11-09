import OAuth2PasswordGrant from 'ember-simple-auth/authenticators/oauth2-password-grant';

export default OAuth2PasswordGrant.extend({
	serverTokenEndpoint: 'http://localhost:8888/o/token/'
	//clientId: 'nkEBduwKLEcjzDg0BKOx96IpyQdpUxiu145PXu6N'
});