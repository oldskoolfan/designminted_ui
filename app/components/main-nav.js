import Ember from 'ember';

export default Ember.Component.extend({
	classNameBindings: ['isMobile:mobile-nav:desktop-nav'],
	isMobile: false,
	actions: {
		invalidateSession() {
			this.sendAction('invalidateSession');
		}
	}
});
