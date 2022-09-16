updind:
	docker compose up jenskins-docker_proyek_pertama -d

upblue:
	docker compose up jenskins-bluocean_proyek_pertama -d

nonginx:
	docker compose up jenskins-docker_proyek_pertama jenskins-bluocean_proyek_pertama -d

blueocean:
	docker exec -it jenskins-bluocean_proyek_pertama sed -i 's/<disableSignup>false<\/disableSignup>/<disableSignup>true<\/disableSignup>/g' /var/jenkins_home/config.xml

blueocean_cat:
	docker exec -it jenskins-bluocean_proyek_pertama bash cat /var/jenkins_home/config.xml | grep disableSignup

push:
	git push -u origin master
	git push --tags

run:
	python3 -m uvicorn sources.main:app --reload --port 8000

calc:
	python3 ./sources/add2vals.py ${num1} ${num2}

install:
	python3 -m pip install -r ./config/requirements.txt

app:
	docker build -f dockerfile-app . --tag simple-pyhton:1.0.0

container:
	docker run --rm -d --name simple-pyhton -p 3000:3000 simple-pyhton:1.0.0

rm:
	docker stop simple-pyhton
	docker rm simple-pyhton