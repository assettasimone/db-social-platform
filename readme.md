#  ESERCIZIO

Vogliamo creare uno spazio virtuale in stile social network dove gli utenti possano condividere le proprie esperienze. 

Ogni utente può creare dei post, al quale può aggiungere media come foto e video. Gli altri utenti possono interagire con il post esprimendo il loro gradimento attraverso un semplice "mi piace".

## Tables

- users
- posts
- media

relational
- likes
- media_post

### Table: users

- id
- f_name
- l_name
- username
- password
- email
- birthdate
- profile_pic_url

### Table: posts

- id
- title
- date
- text
- user_id


### Table: media

- id
- url
- type
- alt_text
- caption


### Table: likes

- id
- user_id
- post_id
- date

### Table: media_post

- id
- post_id
- media_id
