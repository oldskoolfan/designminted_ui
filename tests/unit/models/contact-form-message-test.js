import { moduleForModel, test } from 'ember-qunit';

moduleForModel('contact-form-message', 'Unit | Model | contact form message', {
  // Specify the other units that are required for this test.
  needs: []
});

test('it exists', function(assert) {
  var model = this.subject();
  // var store = this.store();
  assert.ok(!!model);
});
