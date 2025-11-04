#  ESERCIZIO

Vogliamo creare uno spazio virtuale in stile social network dove gli utenti possano condividere le proprie esperienze. 

Ogni utente può creare dei post, al quale può aggiungere media come foto e video. Gli altri utenti possono interagire con il post esprimendo il loro gradimento attraverso un semplice "mi piace".

## Tables

- Users
- Posts
- Media

relational
- Likes
- media_post

### Table: Users

- id
- f_name
- l_name
- username
- password
- email
- birthdate
- profile_pic


### Table: Posts

- id
- title
- date
- text
- user_id


### Table: Media

- id
- url
- type
- alt_text
- caption


