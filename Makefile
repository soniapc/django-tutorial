run: venv
	. venv/bin/activate && python3 manage.py runserver

shell: venv
	. venv/bin/activate && python3 manage.py shell

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv -p python3 venv
	venv/bin/pip install -Ur requirements.txt
	touch venv/bin/activate
