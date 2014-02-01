require 'pstore'
require 'ostruct'
require 'yaml/store'

store = YAML::Store.new('ion.yml')

user = OpenStruct.new(name: 'Ion', last_name: 'din Deal', recruite: false)

store.transaction do
	store[:first_name] = user.name
	store.commit

	store.abort unless user.recruite

	store[:last_name] = last_name
end