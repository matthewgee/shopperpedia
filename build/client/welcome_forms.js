 var user_signup_form, user_passion_form, user_ranking_form; user_signup_form = function(next_action) {
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll : 'vertical',
        items: [
            {
                xtype: 'fieldset',
                title: 'Personal Info',
                // instructions: 'Please enter the information above.',
                defaults: {
                    required: true,
                    labelAlign: 'left',
                    labelWidth: '40%'
                },
                items: [
                    {
                        xtype: 'textfield',
                        name : 'name',
                        label: 'Name',
                        useClearIcon: true,
                        autoCapitalize : true
                    },
                    {
                        xtype: 'textfield',
                        name : 'email',
                        label: 'Email',
                        useClearIcon: true,
                        autoCapitalize : false
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
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll : 'vertical',
        items: [
            {
                xtype: 'fieldset',
                title: 'Which of the following are important to you when shopping?',
                // instructions: 'Please enter the information above.',
                defaults: {
                    xtype: 'checkboxfield',
                    required: false,
                    labelAlign: 'left',
                    labelWidth: '60%',
                    useClearIcon: true,
                    autoCapitalize : true,
                    listeners: {
                        check: function(c) { return check_action('check', c) },
                        uncheck: function(c) { return check_action('uncheck', c) }
                    }
                },
                items: [
                    {
                        name : 'money',
                        label: 'Save Money'
                    },
                    {
                        name : 'energy',
                        label: 'Reduce Energy Consumption'
                    },
                    {
                        name : 'ethical',
                        label: 'Avoid Unethical Companies'
                    },
                    {
                        name : 'green',
                        label: 'Support Green Companies'
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

user_ranking_form = function(next_action) {
    return {
        fullscreen     : true,
        standardSubmit : false,
        scroll : 'vertical',
        items: [
            {
                xtype: 'fieldset',
                title: 'Which goals are most important to you?',
                instructions: 'Sort from highest to lowest importance.',
                defaults: {
                    required: false,
                    labelAlign: 'left',
                    labelWidth: '60%'
                },
                items: [
                    {
                        xtype: 'checkboxfield',
                        name : 'money',
                        label: 'Save Money',
                        useClearIcon: true,
                        autoCapitalize : true
                    },
                    {
                        xtype: 'checkboxfield',
                        name : 'energy',
                        label: 'Reduce Energy Consumption',
                        useClearIcon: true,
                        autoCapitalize : false
                    },
                    {
                        xtype: 'checkboxfield',
                        name : 'ethical',
                        label: 'Avoid Unethical Companies',
                        useClearIcon: true,
                        autoCapitalize : false
                    },
                    {
                        xtype: 'checkboxfield',
                        name : 'green',
                        label: 'Support Green Companies',
                        useClearIcon: true,
                        autoCapitalize : false
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
