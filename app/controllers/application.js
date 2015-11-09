import Ember from 'ember';

export default Ember.Controller.extend({
	session: Ember.inject.service('session'),
	actions: {
		invalidateSession() {
			//console.log("Invalidating session...");
			this.get('session').invalidate();
		}
	}
});
