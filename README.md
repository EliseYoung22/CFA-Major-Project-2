# Care For Caring

##### About
Care for Caring is an online forum for youth who are in the position where they have become the main carer for their unwell parent or guardian. Care for caring gives these teenagers a place to go and talk to people in a similar situation and either talk about their issues or completely unrelated topics in the forum section. It also helps to connect the carers (the youth) with counsellors (the professional therapists) to give the opportunity to talk about any issues the carers may be facing and to promote positive mental health. At the press of a button a help request will be sent to the team and will prompt one the counsellors to initiate a conversation with the carer through the internal messaging system. The internal messaging system also give the carers an opportunity to connect with other members and chat about anything they want.
The site also features a vouchers page where users can go to redeem vouchers for discounted meals and experiences like movie tickets and rock climbing.


This project was created for our second major project at Coder Factory Academy. The project brief was to create a two sided platform and app to pitch to one of these three people with a related topic:
- Barack Obama (politics)
- Rupert Murdoch (journalism)
- Bill & Melinda Gates (social causes/global development)

##### Project Rquirments
* Create your application using Ruby on Rails.
* Demonstrate knowledge of Rails conventions.
* Use postgresql database in development.
* Use an API (eg. Omniauth, Geocoding, Maps, other..).
* Use appropriate gems.
* Use environmental variables to protect API keys etc.
* Implement a payment system for your product *
* Must send transactional emails (eg. using Mailgun).
* Have an internal user messaging system.
* Have some type of searching, sorting and or filtering capability.
* Have some type of file uploading capability (eg. images).
* Have authentication (eg. Devise, must have full functionality in place).
* Have authorisation (users have restrictions on what they can see and edit).
* Have an admin dashboard for the admin user to administrate the site.
* Document your application with a README that explains how to setup, configure and use your application.
* The core functionality of your application needs to be tested with Rspec.

### Ideation Process
When presented with this project I immediately knew I wanted to focus on a social cause. Care for Caring had been a previous idea of mine that never made it to the development process so I though now would be a good time to do it. There was a lot of planning involved before I started any coding and I found myself drawing many, many wire fames and maps for how I wanted the site to flow. I also found it very helpful to map out by basic database on paper before I started to construct anything.
##### Entity Relationship Diagram
![erd](https://cloud.githubusercontent.com/assets/25731474/25410294/242b0bfc-2a59-11e7-84ed-66bd127330c1.png)

##### User flow
![userfloe](https://cloud.githubusercontent.com/assets/25731474/25410342/6b172df2-2a59-11e7-8fdd-a48f0852b098.jpg)
##### Wireframes
![wire1](https://cloud.githubusercontent.com/assets/25731474/25410339/6b143aca-2a59-11e7-9d84-2610aebed00a.jpg)
![wire2](https://cloud.githubusercontent.com/assets/25731474/25410340/6b1673b2-2a59-11e7-99be-2ecd76ac7740.jpg)
![wire3](https://cloud.githubusercontent.com/assets/25731474/25410341/6b172eba-2a59-11e7-81bc-0d07faa303c8.jpg)


##### Database Maps
![db](https://cloud.githubusercontent.com/assets/25731474/25410331/656b10e4-2a59-11e7-8f02-abec0af3d5a1.jpg)
![databasemap](https://cloud.githubusercontent.com/assets/25731474/25410324/61e49c60-2a59-11e7-82aa-4602ad8d9f37.jpg)

##### Trello
![trello1](https://cloud.githubusercontent.com/assets/25731474/25410337/6ab047b8-2a59-11e7-8c12-f54ab00d9ffd.png)
![trello2](https://cloud.githubusercontent.com/assets/25731474/25410338/6adf5f80-2a59-11e7-809d-14ba95d2c57e.png)


## Getting Started
| Gems Used | |
| ------ | ------ |
| Devise | Ransack |
| Bulma-rails |Paperclip-cloudinary |
| Omniauth-facebook | Rolify |
| Papaerclip | Pundit |
| Simple-form |  Omniauth-facebook |
| Friendly-id|  |

#### Install
- Clone the repo
```sh
$ git clone https://github.com/EliseYoung22/CFA-Major-Project-2
```
- Run bundle to ensure all the gems get installed
```sh
$ bundle
```
- Create and migrate the database
```sh
$ rake db:create
$ rake db:migrate
```
- Run the server to test
```sh
$ rails s
```
- Proceed to localhost:3000
