redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379/0'
Redis.current = Redis.new(url: redis_url)
