// logger module

exports.info = function(message) {
        console.log(['INFO', Date.now(), message].join(' '));
};
