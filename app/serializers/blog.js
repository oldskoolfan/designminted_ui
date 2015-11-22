import DS from 'ember-data';

//export default DS.RESTSerializer.extend();
export default DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin, {
	attrs: {
		contents: { embedded: 'always'},
		comments: { embedded: 'always' }
	}
});
