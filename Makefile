shoryuken-worker:
	bundle exec shoryuken -C config/shoryuken.yml -R
shoryuken-job:
	QUEUE_ADAPTER=shoryuken bundle exec rails runner 'ShoryukenJob.perform_later("ABC")'
job:
	bundle exec rails runner 'SampleJob.perform_later'
reset-sqs-queue:
	bundle exec shoryuken sqs delete example1
	bundle exec shoryuken sqs delete example2
	bundle exec shoryuken sqs delete example3
	bundle exec shoryuken sqs create example1
	bundle exec shoryuken sqs create example2
	bundle exec shoryuken sqs create example3
