require 'pstore'
require 'ostruct'

store = PStore.new('ion.store')

user = OpenStruct.new(name: 'Ion', last_name: 'din Deal', recruite: false)

store.transaction do
	store[:first_name] = user.name
	
	store.abort unless user.recruite
end