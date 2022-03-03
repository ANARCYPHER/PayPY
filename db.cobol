(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ winpty python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  No migrations to apply.
  Your models in app(s): 'base' have changes that are not yet reflected in a mig
ration, and so won't be applied.
  Run 'manage.py makemigrations' to make new migrations, and then re-run 'manage
.py migrate' to apply them.
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ winpty python manage.py makemigrations
Migrations for 'base':
  base\migrations\0001_initial.py
    - Create model Product
    - Create model Order
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
$ winpty python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, base, contenttypes, sessions
Running migrations:
  Applying base.0001_initial... OK
(env)
skull@DESKTOP-ENFPVK3 MINGW64 ~/desktop/paypy/paypy_client
