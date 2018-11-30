# untitled-framework

## Requirements

* Ruby 2.5.3
* RabbitMQ
* PostgreSQL

## Running the app

1. Run RabbitMQ
    ```docker run -d --hostname my-rabbit --name some-rabbit -e RABBITMQ_DEFAULT_USER=user -e RABBITMQ_DEFAULT_PASS=password  -p 8080:15672 -p 5672:5672 rabbitmq:3-management```

2. Create .env
    ```RABBIT_USERNAME=user```
    ```RABBIT_PASSWORD=password```

3. Install depends
    ```bundle install```

4. Setup database
   `rake db:setup`

5. Add data to RabbitMQ
   ```ruby publisher.rb```

6. Receive data from RabbitMQ
    6.1 Daemon start `ruby daemon daemon_receive.rb start`
    6.2 Daemon start `ruby daemon daemon_receive.rb stop`
