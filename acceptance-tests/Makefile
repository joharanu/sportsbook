default: test

test: api-test-cleanup api-test-setup api-test-features

api-test-cleanup:
	rm -rf results

api-test-setup:
	mkdir -p results
	bundle install --path vendor/bundle

api-test-features:
	bundle exec cucumber features/ -r ./support -r ./step_definitions --tags @events -p qa