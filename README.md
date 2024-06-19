# README

Digital Store: Create an order of items then submit to get the invoice details

Things you may want to cover:

* 1- Build Image
> docker compose build

* 2- Run Image
> docker compose run

* 3- Run Tests (opcional)
> docker compose exec api bin/rails spec

* 4- Run Seeds (only in case they didnt run automatically)
> docker compose exec api bin/rails db:seed

* 5- Run the store in:
> locahost:3000/orders/new

### Input 1
> - 2 book at 12.49 
> - 1 music CD at 14.99
> - 1 chocolate bar at 0.85

![input1.png](docs%2Finput1.png)
![output1.png](docs%2Foutput1.png)

> - 1 imported box of chocolates at 10.00
> - 1 imported bottle of perfume at 47.50

![input2.png](docs%2Finput2.png)
![output2.png](docs%2Foutput2.png)

> - 1 imported bottle of perfume at 27.99
> - 1 bottle of perfume at 18.99
> - 1 packet of headache pills at 9.75
> - 3 imported boxes of chocolates at 11.25

![input3.png](docs%2Finput3.png)
![output3.png](docs%2Foutput3.png)


### Without Docker
> - Nothing really different from running a regular rails app I used ruby version 3.2.4, rails version 7.1.3.4 & postgres version 14.12
> - The usual bundle install, db:migrate and rails server (the db name I used can be found in DockerFile)






