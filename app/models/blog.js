import DS from 'ember-data';

export default DS.Model.extend({
  blogTitle: DS.attr('string'),
  pubDate: DS.attr('string'),
  // FK relations
  user: DS.belongsTo('user'),
  comments: DS.hasMany('comment', {async: false}),
  contents: DS.hasMany('content', {async: false})
});
