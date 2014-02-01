require 'pstore'

store = PStore.new('data.store')

last_file = store.transaction { store[:last_file] }

p last_file