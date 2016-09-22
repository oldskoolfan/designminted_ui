import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('about');
  this.route('services');
  this.route('portfolio');
  this.route('blog', { path: '/blog' });
  this.route('blog-id', {path: '/blog/:id/:title'});
  this.route('contact');
  this.route('testimonials');
  this.route('new-user');
  this.route('login');
  this.route('error');
});

export default Router;
