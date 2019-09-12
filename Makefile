shoryuken:
	bundle exec shoryuken -q 'example1,example2,example3' -r ./hello_worker.rb
job:
	bundle exec rails runner 'SampleJob.perform_later'
