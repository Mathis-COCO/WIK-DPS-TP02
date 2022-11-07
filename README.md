# WIK-DPS-TP01

Please, clone this project by doing the command below: 

```
git clone git@github.com:Mathis-COCO/WIK-DPS-TP01.git
```

Next, setup your localhost port by changing it in the'.env' file.
You can delete this file and the server will run by default on port 3000

After that, you can start your server by typing this command from the root of your project:

```
npx tsc
```
```
npm run start
```

And there you go !
You started your server on the port you specified at http://localhost:YOUR_PORT/

Note : Only /ping route works and it sends the header of your request. Other routes send an error.