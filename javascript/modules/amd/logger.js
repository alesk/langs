// logger module
define(function() {
        return {
                info: function(message) {
                        console.log(['INFO', Date.now(), message].join(' '));
                }
        };
});
