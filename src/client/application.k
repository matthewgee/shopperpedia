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