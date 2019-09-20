shoryuken-job-worker:
	bundle exec shoryuken --rails --config config/shoryuken.yml
shoryuken-plain-worker:
	bundle exec shoryuken --config config/shoryuken.yml --require ./shoryuken_worker.rb
shoryuken-job:
	bundle exec rails runner 'ShoryukenJob.perform_later("ABC")'
shoryuken-random-failure-job:
	bundle exec rails runner 'ShoryukenRandomFailureJob.perform_later("ABC")'
shoryuken-forever-failure-job:
	bundle exec rails runner 'ShoryukenForeverFailureJob.perform_later("ABC")'
shoryuken-retry-job:
	bundle exec rails runner 'ShoryukenRetryJob.perform_later("ABC")'
reset-sqs-queue:
	bundle exec shoryuken sqs delete example1
	bundle exec shoryuken sqs delete example2
	bundle exec shoryuken sqs delete example3
	bundle exec shoryuken sqs create example1
	bundle exec shoryuken sqs create example2
	bundle exec shoryuken sqs create example3
