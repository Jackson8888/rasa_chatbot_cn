train:
	rasa train --domain domain.yml --data data --config config.yml --out models

run:
	rasa run actions --actions actions.actions & 
	rasa run --endpoints configs/endpoints.yml --enable-api -m models --debug

run-cmdline:
	kidx run actions --actions actions.actions & 
	kidx shell --endpoints configs/endpoints.yml -m models --debug

run-graph:
	rasa visualize --domain domain.yml --stories data/core --config config.yml --nlu data/nlu
