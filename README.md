# QCore Adbent Calendar

https://github.com/qcore-info/advent-calendar-2019

## Requirements

* Docker

## Get started

* Dockerイメージをビルド(`docker-compose build`)してください
* QoreSDKをダウンロードしディレクトリトップに配置してください
* 以下の内容の`src/credentials.py`を作成してください
* コンテナを起動(`docker-compose up`)しブラウザで`http://localhost:8888`にアクセスしてください

### `src/credentials.py`

```py
username = 'username'
password = 'password'
endpoint = 'endpoint'
```
