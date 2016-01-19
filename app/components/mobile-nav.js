import Ember from 'ember';
import MainNav from './main-nav';

export default MainNav.extend({
	isMobile: true,
	navVisible: false,
	actions: {
		toggleNav() {
			var context = this;
			Em.run.throttle(context, context.toggleNavFn, 1000);
		}
	},
	toggleNavFn: function() {
		console.debug('toggling nav...');
		$('html').toggleClass('nav-visible');
		Em.run.later(this, function() {
			this.set('navVisible', $('html').hasClass('nav-visible'));
		}, 1000);
	}
});
