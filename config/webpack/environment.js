const { environment } = require('@rails/webpacker')

const aliasConfig = {
    'jquery': 'jquery/src/jquery',
    'jquery-ui/sortable': 'jquery-ui/ui/widgets/sortable'
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = environment
