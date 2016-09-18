/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'design-minted',
    environment: environment,
    rootURL: '/',
    locationType: 'auto',
	apiHost: 'http://localhost:8888',
	clientId: 'nkEBduwKLEcjzDg0BKOx96IpyQdpUxiu145PXu6N',
	secret: 'JEi5w8aHQ3nWt7FAP1uXjpiUogn9YLCcJDG4psk7hdYGPUeByCTKwujjiQxV0nY4B54lVM7HciQvlc5Xw4kIPiajsGuisMgJGtai7O7rQgZ9qUM7FR0K0bBJpBG5yHZa',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
  	},
	contentSecurityPolicy: {
		'default-src': "'none'",
		'script-src': "'self' https://*.google.com https://*.gstatic.com 'unsafe-inline http://*.google-analytics.com",
		'font-src': "'self' https://*.bootstrapcdn.com",
		'connect-src': "'self' http://localhost:8888",
		'img-src': "'self' http://localhost:8888 http://*.google-analytics.com",
		'style-src': "'self' 'unsafe-inline' https://*.bootstrapcdn.com",
		'media-src': "'self'"
	},
	PAGE_TYPES: {
		HOME: 1,
		SERVICES: 2,
		PORTFOLIO: 3,
		BLOG: 4,
		CONTACT: 5,
		TESTIMONIALS: 6,
		ABOUT: 7
	},
	moment: {
		outputFormat: 'MMM Do YYYY, [at] h:mm a'
	}
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
	  ENV.apiHost = "http://designminted.com:8080";
  }

  return ENV;
};
