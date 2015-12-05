Title: Flockr
Team Members: Andrew Chang, Da Hyun Lee, Mason Scott, Kevin Shi
Demo Link: https://railsflockr.herokuapp.com/

Idea: An application where users can meet up at events with other users that share similar interests and hobbies. 

Models and Description:
User
has name, email, interests, location
Event
has time, location, title, description
contains many users, comments
Comment
has text and belongs to a User 
Interest
has many users, events

Features:
Users can log in
Users can create events
Users can comment on events
Users can edit interests
Search for events related to their interests 
Search for events nearby or at any particular location

Division of Labor:
Andrew: Added support for Devise gem, comments and interests model
Kevin: User model, front end design
Anna: Front end design
Mason: Events model along with location gem