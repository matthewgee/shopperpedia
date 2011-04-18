 var user_signup_form, user_passion_form, make_sortable_list, user_ranking_form; user_signup_form = function(next_action) {
    // Return a configuration object for the signup form
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll         : false,
        items: [
            {
                xtype: 'fieldset',
                title: 'Personal Info',
                // instructions: 'Please enter the information above.',
                defaults: {
                    required: true,
                    labelAlign: 'left',
                    labelWidth: '40%',
                    useClearIcon: true,
                    autoCapitalize : true
                },
                items: [
                    {
                        xtype: 'textfield',
                        name : 'name',
                        label: 'Name'
                    },
                    {
                        xtype: 'textfield',
                        name : 'email',
                        label: 'Email'
                    }
                ]
            },
            {
                // align: 'right',
                xtype   : 'button',
                text    : 'Next',
                // width   : '50%',
                ui      : 'forward',
                handler : next_action
            }
        ]
    }
}

user_passion_form = function(next_action, check_action) {
    // Return a configuration object for the user "passions" form
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll         : false, // 'vertical',
        items: [
            {
                xtype: 'fieldset',
                title: 'Which of the following are important to you when shopping?',
                // instructions: 'Please enter the information above.',
                defaults: {
                    xtype        : 'checkboxfield',
                    required     : false,
                    labelAlign   : 'left',
                    labelWidth   : '60%',
                    useClearIcon : true,
                    listeners    : {
                        check: function(c) { return check_action('check', c) },
                        uncheck: function(c) { return check_action('uncheck', c) }
                    }
                },
                items: [
                    {
                        name  : 'money',
                        label : 'Save Money'
                    },
                    {
                        name  : 'energy',
                        label : 'Reduce Energy Consumption'
                    },
                    {
                        name  : 'ethical',
                        label : 'Avoid Unethical Companies'
                    },
                    {
                        name  : 'green',
                        label : 'Support Green Companies'
                    }
                ]
            },
            {
                // align: 'right',
                xtype   : 'button',
                text    : 'Next',
                // width   : '50%',
                ui      : 'forward',
                handler : next_action
            }
        ]
    }
}

// Create an HTML list of items, using a dict of value/description pairs
// The resulting HTML can then have Ext.util.Sortable applied to it to make it
// actually sortable in the client.
//
// Example 'dict': {'money':'Save Money', 'ethical':'Avoid Unethical Companies'}
make_sortable_list = function(container_id, dict) {
    var name, label, html, div, elements, ul; html = ""
    for(name in dict) { label = dict[name];
        div = "<div class='x-form-label' style='width:100%'><span>" + label + "</span></div>"
        html += "<li class='x-field' value='" + name + "'>" + div + "</li>"
    }

    elements = Ext.query('#' + container_id)
    if(elements.length == 0) {
        console.warn('Could not find container DOM element: ' + container_id)
    } else {
        ul = elements[0]
        ul.innerHTML = html
    }
}

user_ranking_form = function(next_action) {
    // Return a configuration object for the ranking form
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll         : false,
        items: [
            {
                xtype        : 'fieldset',
                id           : 'rank_fieldset',
                title        : 'Which goals are most important to you?',
                instructions : 'Sort from highest to lowest importance.',
                defaults: {
                    xtype      : 'textfield',
                    required   : false,
                    labelAlign : 'left',
                    labelWidth : '60%',
                    disabled   : true
                },
                html: "<ul id='rankings'></ul>"
            },
            {
                // align: 'right',
                xtype   : 'button',
                text    : 'Next',
                // width   : '50%',
                ui      : 'forward',
                handler : next_action
            }
        ]
    }
}
