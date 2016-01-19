import Ember from 'ember';
import config from '../config/environment';

export default Ember.Controller.extend({
	session: Ember.inject.service('session'),
	init: function() {
		this._super();
		this.set('username', '');
		this.set('password', '');
		this.set('msg', '');
	},
	actions: {
		cancel() {
			this.resetForm();
			this.transitionToRoute('/');
		},
		submitForm() {
			this.authenticate();
		}
	},
	authenticate: function() {
		let { username, password } = 
			this.getProperties('username', 'password');
		this.get('session').authenticate('authenticator:custom', 
		username, password).then(() => { 
			this.store.query('user', {username:username})
			.then((result) => {
				//console.log(user);
				let user = result.get('firstObject');
				let session = this.get('session');
				session.set('data.username', username);
				session.set('data.userid', user.get('id'));
				this.transitionToRoute('/');
			});

		}, (reason) => {
			this.set('msg', reason.error);
		});
	},
	resetForm: function() {
		this.set('msg', '');
		this.set('username', '');
		this.set('password', '');
	}
});
