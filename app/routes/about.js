import Ember from 'ember';
import IndexRoute from './index';
import config from '../config/environment';

export default IndexRoute.extend({
	pageType: config.PAGE_TYPES.ABOUT
});
