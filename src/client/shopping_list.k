// Register a data model that will be used by each Shopping List item
Ext.regModel('ShoppingItem', {
    fields: ['sort_order', 'name']
});

// Create a shopping list (hard-coded values for the demo on Tuesday Apr 19)
shopping_list = new Ext.data.Store {
    model: 'ShoppingItem',
    sorters: 'sort_order',
    data: [
        {sort_order: 1, name: 'bananas'},
        {sort_order: 2, name: 'light bulbs'},
        {sort_order: 3, name: 'dishwasher detergent'},
        {sort_order: 4, name: 'mushrooms'},
        {sort_order: 5, name: 'cheese'}
    ]
}


// This is the Ext view that renders the shopping_list data store
shopping_list_view = {
    // Return a configuration object for the view
    {
        xtype    : 'list',
        itemTpl  : '<div class="shopping-list-item"><strong>{name}</strong></div>',
        // itemSelector : 'div.shopping-list-item',
        width    : '100%',
        // selModel : {
        //     mode: 'SINGLE',
        //     allowDeselect: true
        // },
        grouped  : false,
        indexBar : false,
        store: shopping_list,
        
        onItemDisclosure: {
            scope: 'test',
            handler: function(record, btn, index) {
                alert('Disclose more info for ' + record.get('name'));
            }
        }
    }
}