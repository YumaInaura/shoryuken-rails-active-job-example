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

```
bundle exec shoryuken -q example1,example2,example3 -r ./hello_worker.rb
```

job

```
bundle exec rails console
SampleJob.perform_later
```

```
shoryuken --help

shoryuken [options]
    -c, --concurrency INT            Processor threads to use
    -d, --daemon                     Daemonize process
    -q, --queue QUEUE[,WEIGHT]...    Queues to process with optional weights
    -r, --require [PATH|DIR]         Location of the worker
    -C, --config PATH                Path to YAML config file
    -R, --rails                      Attempts to load the containing Rails project
    -L, --logfile PATH               Path to writable logfile
    -P, --pidfile PATH               Path to pidfile
    -v, --verbose                    Print more verbose output
    -V, --version                    Print version and exit
    -h, --help                       Show help
```

https://www.rubydoc.info/github/phstc/shoryuken
