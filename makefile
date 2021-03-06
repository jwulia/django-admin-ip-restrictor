test:
	tox

clean:
	find . -type f -name "*.pyc" -delete
	rm -rf coverage.xml .coverage.* *.egg-info dist .cache .tox .pytest.cache

publish: clean
	rm -rf build dist; \
	pip install twine wheel;\
	python setup.py bdist_wheel; \
	twine upload --username $$PYPI_USERNAME --password $$PYPI_PASSWORD dist/*
