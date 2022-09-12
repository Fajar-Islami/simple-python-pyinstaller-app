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