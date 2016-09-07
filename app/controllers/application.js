import Ember from 'ember';

export default Ember.Controller.extend({
	session: Ember.inject.service('session'),
	actions: {
		invalidateSession() {
			this.get('session').invalidate();
		}
	},
	init: function() {
		let userId = this.get('session').get('data.userid');
		if (userId) {
			this.store.findRecord('user', userId);
		}
	}
});
