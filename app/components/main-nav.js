import Ember from 'ember';

export default Ember.Component.extend({
	actions: {
		invalidateSession() {
			this.sendAction('invalidateSession');
		}
	}
});
