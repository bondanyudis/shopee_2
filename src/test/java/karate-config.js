function() {
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev'; // a custom 'intelligent' default
    }
    var config = { // base config JSON

        authentication : "c4483e7df579258ef883b772519961999f042a37",
        authentication_failure : "c4483e7df579258ef883b772519961999f042a37111",
        base_url : "https://api.github.com"

    };
    if (env == 'stage') {
        // over-ride only those that need to be
        config.someUrlBase = 'https://stage-host/v1/auth';
    } else if (env == 'e2e') {
        config.someUrlBase = 'https://e2e-host/v1/auth';
    }
    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 300000);
    karate.configure('readTimeout', 300000);
    // karate.configure('report', {'showAllSteps' : false,'showLog': true});
    // karate.configure('showLog', true);

    // karate.configure('report', false);
    // karate.configure('retry' , {count: 3, interval: 3000})

    return config;
}