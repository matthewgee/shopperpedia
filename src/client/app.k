$$ = (id) { Ext.getCmp id }

new Ext.Application {
    name: 'Shopperpedia',

    launch: {
        window.passions = passions = {}
        window.sortable = sortable = null
        
        @viewport = new Ext.Panel {
            fullscreen: true,
            
            id     : 'mainPanel',
            layout : 'card',
            items  : [
                {
                    id       : 'welcome_carousel',
                    xtype    : 'carousel',
                    // disabled : true,
                    scroll   : false,
                    defaults : {
                        cls : 'card'
                    },
                    items: [
                        {
                            items: user_signup_form {
                                $$('welcome_carousel').next()
                            }
                        },
                        {
                            items: user_passion_form {
                                $$('welcome_carousel').next()
                            }, (action, c) {
                                if action == 'check' {
                                    passions[c.getName()] = c.label
                                } else {
                                    delete passions[c.getName()]
                                }
                                make_sortable_list('rankings', passions)
                            }
                        },
                        {
                            items: user_ranking_form {
                                Ext.Msg.alert('Done', "Thanks, we'll get you started right away!", Ext.emptyFn);
                            },
                            listeners: {
                                activate: { 
                                    // console.log('activate')
                                    if sortable {
                                        console.log('destroy')
                                        sortable.clearListeners()
                                    }
                                    sortable = new Ext.util.Sortable 'rankings', {
                                        itemSelector: 'li',
                                        direction: 'vertical',
                                        scroll: true,
                                        constrain: true
                                    }
                                }
                            }
                        }
                    ]
                }
            ]
        }
    }
}

/*
new Ext.Application({
    name: 'Shopperpedia',

    launch: function() {
        this.viewport = new Ext.Panel({
            fullscreen: true,

            id    : 'mainPanel',
            layout: 'card',
            items : [
                {
                    xtype: 'carousel',
                    defaults: {
                        cls: 'card'
                    },
                    items: [
                        {
                            html: ''
                        },
                        {
                            title: 'Tab 2',
                            html: '2'
                        },
                        {
                            title: 'Tab 3',
                            html: '3'
                        }
                    ]
                }
            ]
        });
    }
});


new Ext.Application({
    launch: function() {
        
        var formBase = {
            scroll: 'vertical',
            url   : 'postUser.php',
            standardSubmit : false,
            items: [{
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
                xtype: 'button',
                text: 'Next',
                // align: 'right',
                width: '50%',
                ui: 'forward',
                handler: function() {
                    if(formBase.user){
                        form.updateRecord(formBase.user, true);
                    }
                    form.submit({
                        waitMsg : {message:'Submitting', cls : 'demos-loading'}
                    });
                }
            }],
        }
        
        if (Ext.is.Phone) {
            formBase.fullscreen = true;
        } else {
            Ext.apply(formBase, {
                autoRender: true,
                floating: true,
                modal: true,
                centered: true,
                hideOnMaskTap: false,
                height: 385,
                width: 480
            });
        }
        
        form = new Ext.form.FormPanel(formBase);
        form.show();

        var carousel1 = new Ext.Carousel();
        
        carousel1.show();
    }
});

*/