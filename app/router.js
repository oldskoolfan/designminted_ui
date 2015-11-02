import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('about');
  this.route('services');
  this.route('portfolio');
  this.route('blog');
  this.route('contact');
  this.route('testimonials');
  this.route('admin');
  //this.route('homepage', {path: '/'});
});

export default Router;
