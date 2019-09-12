# README

# shoryuken

create que

```
bundle exec shoryuken sqs create example1
bundle exec shoryuken sqs create example2
bundle exec shoryuken sqs create example3
```

worker

```
bundle exec shoryuken -R -C config/shoryuken.yml
```

job

```
bundle exec rails console
SampleJob.perform_later
```
