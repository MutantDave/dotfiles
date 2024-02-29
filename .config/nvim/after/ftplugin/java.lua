local home = os.getenv('HOME')
local config = {
  cmd = {
    '/opt/homebrew/bin/jdtls',
    '--jvm-arg=-javaagent:' .. home .. '/.local/share/eclipse/lombok.jar'
  },
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
