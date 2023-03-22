# LOCODE_DOCKER
Tworzymy kontener w dockerze, warto zwrócić uwage na uprawnienia
```
docker-compose up -d --build 
```

W docekrze odpalamy skrypt to skonfiguruje nam projekt
```
bash build.sh
```
Skrypt pobiera nam projekt tworzy config  i migracje do bazy danych oraz dodaje crona który wywołuje nam skrypt raz dziennie 
