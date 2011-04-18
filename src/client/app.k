$$ = (id) { Ext.getCmp id }

new Ext.Application {
    name: 'Shopperpedia',

    launch: {
        window.passions = passions = {}
        window.sortable = sortable = null
        
        @viewport = new Ext.Panel {
            fullscreen: true,
            
            id     : 'main-panel',
            layout : 'card',
            items  : [
                {
                    id       : 'welcome-carousel-container',
                    layout   : 'card',
                    scroll   : false,
                    items: [
                        {
                            id       : 'welcome-carousel',
                            xtype    : 'carousel',
                            // disabled : true,
                            scroll   : false,
                            defaults : {
                                cls : 'card'
                            },
                            items: [
                                {
                                    items: user_signup_form {
                                        $$('welcome-carousel').next()
                                    }
                                },
                                {
                                    items: user_passion_form {
                                        count = 0; for p in passions { count += 1 }
                                        if count >= 2 {
                                            $$('welcome-carousel').next()
                                        } else {
                                            Ext.Msg.alert('Select', "Please select at least two options", Ext.emptyFn)
                                        }
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
                                        $$('main-panel').setActiveItem(1)
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
                },
                {
                    id       : 'shopping_list_container',
                    layout   : 'vbox',
                    items    : shopping_list_view(),
                    dockedItems: [
                        {
                            dock   : 'top',
                            xtype  : 'toolbar',
                            title  : 'Shopping List'
                        },
                        {
                            xtype  : 'toolbar',
                            dock   : 'bottom',
                            layout : {
                                pack: 'left'
                            },
                            defaults: {
                                iconMask: true,
                                ui: 'plain'
                            },
                            items: [
                                {
                                    iconCls: 'add'
                                },
                                {
                                    iconCls: 'settings',
                                    handler: {
                                        $$('main-panel').setActiveItem(0)
                                    }
                                }
                            ]
                        }
                    ]
                }
            ]
        }
        // After main panel constructed:
        // - nothing to do for now
    }
}
