# Reminder - WIK-DPS-TP01

Please, clone this project by doing the command below: 

```
git clone git@github.com:Mathis-COCO/WIK-DPS-TP01.git
```

Next, setup your localhost port by changing it in the'.env' file.
You can delete this file and the server will run by default on port 6464

After that, you can start your server by typing this command from the root of your project:

```
npx tsc
```
```
npm run start
```

And there you go !
You started your server on the port you specified at http://localhost:YOUR_PORT/***

# WIK-DPS-TP02

* I started doing the first part with a tutorial and lost a lot of time doing the second part so i coulnd't change the first one but it's still working.

### Part 1 single staged:

* Build the first image with ```docker build -t wik-dps-tp02-1 -f firstpart.Dockerfile .```

* And run it with ```docker run -d -p YOUR_PORT:YOUR_PORT wik-dps-tp02-1```

### Part 2 multi staged:

* Build the first image with ```docker build -t wik-dps-tp02-2 -f Dockerfile .```

* And run it with ```docker run -it -p YOUR_PORT:YOUR_PORT wik-dps-tp02-2```

Like WIK-DPS-TP01, You started your server on the port you specified at ```(http://localhost:YOUR_PORT/)```***



*** Note : Only /ping route works and it sends the header of your request. Other routes send a 404 error.