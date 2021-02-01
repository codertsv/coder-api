# pickwinner

Example plumber api for picking a winner from a list of items

## Heroku deploy

```
heroku create --buildpack https://github.com/virtualstaticvoid/heroku-buildpack-r.git pickwinner # your-heroku-app-name
```
```
heroku git:remote -a pickwinner  # your-heroku-app-name
```
```
heroku stack:set heroku-18
```
```
git push heroku main
```
```
heroku logs --tail
```
```
curl https://your-heroku-app-name.herokuapp.com/pickwinner?l=R,Python
```
# Swagger

https://coder-tsv.herokuapp.com/__docs__/

![swagger](images/swagger.png)
