require 'pstore'

store = PStore.new('data.store')

store.transaction do
	store[:last_file] = 'example.com'
	store[:last_time_opened] = Time.now
end