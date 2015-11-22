import Ember from 'ember';
import LoginUtil from 'design-minted/utils/login-util';

export default Ember.Controller.extend({
	init: function() {
		this._super();
		this.set('name', '');
		this.set('password', '');
		this.set('confirm', '');
		this.set('email', '');
		this.set('msg', '');
	},
	actions: {
		cancel() {
			this.resetForm();
			this.transitionToRoute('/');
		},
		submitUserForm() {
			let name = this.get('username');
			let pass = this.get('password');
			let conf = this.get('confirm');
			let email = this.get('email');
			if (name === '' || pass === '' || conf === '' || email === '') {
				this.set('msg', 'All fields are required');
				return false;
			}
			if (pass !== conf) {
				this.set('msg', 'Passwords do not match');
				return false;
			}
			let loginUtil = LoginUtil.create();
			loginUtil.createNewUser(name, email, pass, 
				this.newUserCallback, this);
		}
	},
	resetForm: function() {
		this.set('msg', '');
		this.set('username', '');
		this.set('password', '');
		this.set('confirm', '');
		this.set('email', '');
	},
	newUserCallback: function(response, context) {
		if (context !== null) {
			context.set('msg', response.data.msg);
		}
	}
});
