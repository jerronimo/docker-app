1. git clone repo
2. go to project dir
3. run 
    ```
        cp ./env.dist .env
    ```
4. change in ```.env``` file:

*  ```APP_PATH``` to your project dir 

*  ```APP_PATH_LOGS``` to your project logs dir
 
*  ```APP_PATH_CACHE``` to your project cache dir 

*  ```APP_PATH_SESSION``` to your project session dir 

5. run 
    ```
       make install
       sudo echo $(docker network inspect bridge | grep Gateway | grep -o -E '[0-9\.]+') "application.loc" >> /etc/hosts
    ```
6. project will be available by link ```http://application.loc``` 
