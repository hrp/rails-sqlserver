require 'tiny_tds'

# conn = TinyTds::Client.new({
# 	dataserver: 'localhost',
# 	database: 'master'
# 	})

# p conn

pf = TinyTds::Client.new({
	host: 'PF-INT-DB1.hq.practicefusion.com'
	})

p pf