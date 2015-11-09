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
		authenticate() {
			let { username, password } = 
				this.getProperties('username', 'password');
			this.get('session').authenticate('authenticator:custom', 
			username, password).then(() => { 
				this.get('session').set('username', username);
				this.transitionToRoute('/');	
			}, (reason) => {
				this.set('msg', reason.error);
			});
			
		}
	},
	resetForm: function() {
		this.set('msg', '');
		this.set('username', '');
		this.set('password', '');
	}
});
