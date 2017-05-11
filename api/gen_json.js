const fs = require('fs')
const join = require('path').join
const yaml = require('js-yaml')

const apiSchemaPath = join(__dirname, 'swagger.yml')
const apiSchema = yaml.safeLoad(fs.readFileSync(apiSchemaPath))

const file = join(__dirname, 'swagger.json')
fs.writeFileSync(file, JSON.stringify(apiSchema, null, '  '))
console.log(`generated ${file}`)
