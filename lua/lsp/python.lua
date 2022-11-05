require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false
        },
        flake8 = {
          enabled = true
        }
      }
    }
  }
}
