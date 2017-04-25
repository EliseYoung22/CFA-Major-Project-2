# Care For Caring

##### About
Care for Caring is an online forum for youth who are in the position where they have become the main carer for their parents have somewhere to go and talk to a professional or other people in a similar situation. This project was created for our second major project at Coder Factory Academy. The project brief was to create a two sided platform and app to pitch to one of these three people with a related topic:
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
* Your app must send transactional emails (eg. using Mailgun).
* Your app should have an internal user messaging system.
* Your app will have some type of searching, sorting and or filtering capability.
* Your app will have some type of file uploading capability (eg. images).
* Your app will have authentication (eg. Devise, must have full functionality in place).
* Your app will have authorisation (users have restrictions on what they can see and edit).
* Your app will have an admin dashboard for the admin user to administrate the site.
* Document your application with a README that explains how to setup, configure and use your application.
* The core functionality of your application needs to be tested with Rspec.

### Ideation Process
When presented with this project I immediately knew I wanted to focus on a social cause. Care for Caring had been a previous idea of mine that never made it to the development process so I though now would be a good time to do it. There was a lot of planning involved before I started any coding and I found myself drawing many, many wire fames and maps for how I wanted the site to flow. I also found it very helpful to map out by basic database on paper before I started to construct anything.
![erd.png](https://www.dropbox.com/s/u9t55jrr7zzm0gd/erd.png?dl=0)


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
