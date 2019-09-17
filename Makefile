shoryuken-worker:
	bundle exec shoryuken --config config/shoryuken.yml --rails --require ./shoryuken_worker.rb
shoryuken-job:
	QUEUE_ADAPTER=shoryuken bundle exec rails runner 'ShoryukenJob.perform_later("ABC")'
shoryuken-random-failure-job:
	QUEUE_ADAPTER=shoryuken bundle exec rails runner 'ShoryukenRandomFailureJob.perform_later("ABC")'
shoryuken-forever-failure-job:
	QUEUE_ADAPTER=shoryuken bundle exec rails runner 'ShoryukenForeverFailureJob.perform_later("ABC")'
job:
	bundle exec rails runner 'SampleJob.perform_later'
reset-sqs-queue:
	bundle exec shoryuken sqs delete example1
	bundle exec shoryuken sqs delete example2
	bundle exec shoryuken sqs delete example3
	bundle exec shoryuken sqs create example1
	bundle exec shoryuken sqs create example2
	bundle exec shoryuken sqs create example3
