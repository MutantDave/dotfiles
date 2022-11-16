vim.g.ale_linters = {
  typescript = {'prettier'},
  javascript = {'prettier'},
  solidity = {
    'solc', 'solium'
  },
  vue = {'vls'},
}

vim.g.ale_solidity_solc_options = '--base-path ./ --include-path ./lib $(forge remappings) --include-path ./node_modules'
