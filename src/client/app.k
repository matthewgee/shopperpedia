new Ext.Application({
    name: 'Shopperpedia',

    launch: {
        @viewport = new Ext.Panel({
            fullscreen: true,

            id     : 'mainPanel',
            layout : 'card',
            items  : [
                {
                    xtype    : 'carousel',
                    defaults : {
                        cls : 'card'
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
        
        // var formBase = {
        //     scroll: 'vertical',
        //     url   : 'postUser.php',
        //     standardSubmit : false,
        //     items: [{
        //             xtype: 'fieldset',
        //             title: 'Personal Info',
        //             // instructions: 'Please enter the information above.',
        //             defaults: {
        //                 required: true,
        //                 labelAlign: 'left',
        //                 labelWidth: '40%'
        //             },
        //             items: [
        //             {
        //                 xtype: 'textfield',
        //                 name : 'name',
        //                 label: 'Name',
        //                 useClearIcon: true,
        //                 autoCapitalize : true
        //             },
        //             {
        //                 xtype: 'textfield',
        //                 name : 'email',
        //                 label: 'Email',
        //                 useClearIcon: true,
        //                 autoCapitalize : false
        //             }
        //             ]
        //     },
        //     {
        //         xtype: 'button',
        //         text: 'Next',
        //         // align: 'right',
        //         width: '50%',
        //         ui: 'forward',
        //         handler: function() {
        //             if(formBase.user){
        //                 form.updateRecord(formBase.user, true);
        //             }
        //             form.submit({
        //                 waitMsg : {message:'Submitting', cls : 'demos-loading'}
        //             });
        //         }
        //     }],
        // }
        // 
        // if (Ext.is.Phone) {
        //     formBase.fullscreen = true;
        // } else {
        //     Ext.apply(formBase, {
        //         autoRender: true,
        //         floating: true,
        //         modal: true,
        //         centered: true,
        //         hideOnMaskTap: false,
        //         height: 385,
        //         width: 480
        //     });
        // }
        // 
        // form = new Ext.form.FormPanel(formBase);
        // form.show();

        // var carousel1 = new Ext.Carousel();
        // 
        // carousel1.show();
    }
});

*/