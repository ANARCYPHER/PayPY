
skull@DESKTOP-ENFPVK3 MINGW64 ~
$ cd desktop

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop
$ git clone https://github.com/divanov11/django-paypal.git
Cloning into 'django-paypal'...
remote: Enumerating objects: 9498, done.
remote: Counting objects: 100% (9498/9498), done.
remote: Compressing objects: 100% (6181/6181), done.
remote: Total 9498 (delta 2302), reused 9494 (delta 2301), pack-reused 0
Receiving objects: 100% (9498/9498), 14.61 MiB | 1.86 MiB/s, done.
Resolving deltas: 100% (2302/2302), done.
Updating files: 100% (7276/7276), done.

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop
$ mkdir PayPy

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop
$ cd paypy

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ python -m venv env

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ ls
env/

skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ source env/Scripts/activate
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ pip install django
Collecting django
  Using cached Django-4.0.3-py3-none-any.whl (8.0 MB)
Collecting tzdata
  Using cached tzdata-2021.5-py2.py3-none-any.whl (339 kB)
Collecting asgiref<4,>=3.4.1
  Using cached asgiref-3.5.0-py3-none-any.whl (22 kB)
Collecting sqlparse>=0.2.2
  Using cached sqlparse-0.4.2-py3-none-any.whl (42 kB)
Installing collected packages: tzdata, sqlparse, asgiref, django
Successfully installed asgiref-3.5.0 django-4.0.3 sqlparse-0.4.2 tzdata-2021.5
WARNING: You are using pip version 21.1.3; however, version 22.0.3 is available.
You should consider upgrading via the 'c:\users\skull\desktop\paypy\env\scripts\python.exe -m pip install --upgrade pip' command.
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ pip freeze
asgiref==3.5.0
Django==4.0.3
sqlparse==0.4.2
tzdata==2021.5
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ django-admin startproject paypy_client
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ ls
env/  paypy_client/
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy
$ cd paypy_client
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ ls
manage.py*  paypy_client/
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
March 03, 2022 - 03:35:19
Django version 4.0.3, using settings 'paypy_client.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ winpty pyhton manage.py migrate
winpty: error: cannot start 'pyhton': Not found in PATH
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ winpty python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ python manage.py startapp base
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ ls
base/  db.sqlite3  manage.py*  paypy_client/
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ code .
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ python manage.py runserver
Watching for file changes with StatReloader
[03/Mar/2022 03:46:18] "GET / HTTP/1.1" 200 14
Not Found: /favicon.ico
[03/Mar/2022 03:46:22] "GET /favicon.ico HTTP/1.1" 404 2277
Performing system checks...

System check identified no issues (0 silenced).
March 03, 2022 - 03:46:03
Django version 4.0.3, using settings 'paypy_client.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ OK
