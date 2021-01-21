- Récupération du Token pour effectué les requetes nécéssitant d'être authentifié -
Méthode : POST
URL : http://localhost:1337/auth/local
Body : {
  		"identifier": "nepheline",
 		 "password": "123456789"
		}

- Un Utilisateur Authentifié peut créer un sujet de discussion -
Methode : POST
URL : http://localhost:1337/topics
Body : {
  		"topic_titre": "La RTX 3070?",
 		"topic_users": 1,
		"topic_creation_date": "2021-01-21"
		}
Header : 
POST /topics HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExMjIzNjg0LCJleHAiOjE2MTM4MTU2ODR9.alPxieM2IDoamcyKSC54YJ0fDzVc47Me4Vltgqn2lmE
Content-Type: application/json
Content-Length: 113

- Un Utilisateur Authentifié peut créer un message associé à un sujet de discussion -

Méthode : POST
URL : http://localhost:1337/messages
Body : {
  		"messages_corps": "J’adore !",
 		"messages_user": 1,
		"messages_topics" : 1,
		"messages_creation_date": "2021-01-21T12:00:00.000Z"
	}
Header : 
POST /messages HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExMjIzNjg0LCJleHAiOjE2MTM4MTU2ODR9.alPxieM2IDoamcyKSC54YJ0fDzVc47Me4Vltgqn2lmE
Content-Type: application/json
Content-Length: 144

- Un utilisateur Authentifié peut consulter un sujet de discussion et les messages associés au sujet -
Méthode : GET
URL : http://localhost:1337/topics/2
Header : 
GET /topics/2 HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExMjIzNjg0LCJleHAiOjE2MTM4MTU2ODR9.alPxieM2IDoamcyKSC54YJ0fDzVc47Me4Vltgqn2lmE

- Un Utilisateur Authentifié peut consulter un message et l'auteur associé au message -
Méthode : GET
URL : http://localhost:1337/messages/1
Header :
GET /messages/2 HTTP/1.1
Host: localhost:1337
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjExMjIzNjg0LCJleHAiOjE2MTM4MTU2ODR9.alPxieM2IDoamcyKSC54YJ0fDzVc47Me4Vltgqn2lmE