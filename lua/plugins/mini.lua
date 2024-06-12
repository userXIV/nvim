return{
    {
        'echasnovski/mini.ai', version = false,
        config = function ()
           require('mini.ai').setup({
                n_lines = 150
            }) 
        end
    },
    {
        'echasnovski/mini.surround', version = false,
        config = function ()
           require('mini.surround').setup()
        end
    }
}
