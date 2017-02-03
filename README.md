# Formularia
Web app for creating, sharing and managing forms with anonymous answers (check it online at formularia.com).


* Functionalities
	* Create multiple forms.
	* Receive multiple answers for each form.
	* Store forms and their corresponding answers in your account.
	* Share your form's url freely to non-registered people (people can answer your form without having a formularia account so you can get answers easily).

* Requirements (if the project wants to be served)
	* Ruby (>= 2.2)
	* Rails (>= 4.2)
	* The project uses Sqlite3 in dev enviroment and Postgres in production.

* Instructions (if the project wants to be served)
	* Install all the requirements (see previous item)
	* Clone the repo ($ git clone https://github.com/sebasdeldi/Formularia.git)
	* Migrate the db info ($ rake db:migrate), inside the project folder
	* Update gems ($ bundle update), inside the project folder
	* Serve the app ($ rails s), the default port is port 3000
