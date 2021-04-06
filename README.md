Original App Design Project - README Template
=====

# LeftOvers

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Cooking application that allows people to find cooking recipes suited to their taste. They can find recipes based off the ingredients they have, the time to make food, a certain food, or how much they know how to cook.

### App Evaluation
- **Category:** Social Networking/Food/Cooking
- **Mobile:** This app would be only developed for mobile.  Functionality would only be limited to IOS.
- **Story:** Analyzes users food choices, and connects them to other reicpes. The user can then decide to favorite the recipe to use or to add comments about the recipe.
- **Market:** Any individual could choose to use this app but it mainly target for people who want to llok at recipes of cooking new dishes.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how often they want to cook or to look at recipes for food. They can also use it to look at food and the ones other people created
- **Scope:** First we would start with a new user, then perhaps they want to edit their profile by postin. They can look for food based off ingredients, time it takes, or skill level of the recipes. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Users are able to register accounts 
* Users are able to sign-in
* Users are able to sign-out 
* Users are able stay sign-in 
* Users are able to post 
* Users are able to view
* Users are able to add comment 
* Users are able to find recpies by ingredients/time/skill/name
* Users are able to filter by ingredients/time/skill/name
* Users are able to take picture of the food

**Optional Nice-to-have Stories**
* Users are able to message
* Categorize food by countries


### 2. Screen Archetypes
* Login/Register 
    * This is where you can login
    * User signs up or logs into their account
* Home Screen 
    * People can look at recipes by particular ingredients they have
    * People can add/delete ingredients
* Search Screen 
    * People can look for recipes using filters 
    * Look up other people or cuisine
* Profile Screen
    * Look at posts you made
    * Edit your own profile picture
    * Post a picture with a caption, recipe, skill, and estimate time it takes.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Search
* Profile
* Settings

**Flow Navigation** (Screen to Screen)

* Login Screen
   * Account creation if no log in is available
* Home Screen
   * Can go to Settings Screen if you click on the tab
   * Can go to Search Screen if you click on the tab
   * Can go to Profile Screen if you click on the tab
   * Logout button to go back to login screen otherwise stay in this screen
* Search Screen
   * Can go to Settings Screen if you click on the tab
   * Can go to Profile Screen if you click on the tab
   * Can go to Home Screen if you click on the tab
   * Logout button to go back to login screen otherwise stay in this screen
* Settings Screen
   * Can go to Home Screen if you click on the tab
   * Can go to Profile Screen if you click on the tab
   * Can go to Search Screen if you click on the tab
   * Logout button to go back to login screen otherwise stay in this screen
* Profile Screen
   * Can go to Settings Screen if you click on the tab
   * Can go to Home Screen if you click on the tab
   * Can go to Search Screen if you click on the tab
   * Logout button to go back to login screen otherwise stay in this screen
## Wireframes
<img src="https://user-images.githubusercontent.com/54512668/112774397-2b405180-8fff-11eb-9706-e1598bff3efe.jpg" width=600>

## Schema 
### Models
- Login Screen

| Property | Type | Description|
| -------- | -------- | -------- |
| username     | String     | special id for user     |
| password    | String     | special password for user     |
- Home Screen

| Property | Type | Description|
| -------- | -------- | -------- |
| ingredient     | String     | name of the ingredient you need |
| foodList     | List     | holds the user's food   |

- Search Screen

| Property | Type | Description|
| -------- | -------- | -------- |
| ObjectID     | String     | Unique ID   |
| Data     | List | List of current exsist recipe
| filteredData | String | Repersent rows of data that match the search text
| Image     | File     | image that users post    |
| Description     | String     | image description by author     |
| numberComments     | Int     | number of people comments on the post     |
- Profile Screen

| Property | Type | Description|
| -------- | -------- | -------- |
| profilePic     | File     | image of author  |
| postPic     | File     | author's posts  |
| profilePic     | File     | image of author  |
- Posting Screen

| Property | Type | Description|
| -------- | -------- | -------- |
| author_id | String | author's name in order to use with posts |
| postPic | File | author's posts|
| food_name | String | author's food name |
| ingredients | String | author's ingredients |
| instructions  | String | author's instruction |

- Setting screen

### Networking
- Login Screen
    - (Create) New Account
    - (Get) Username 
    - (Get) Password
- Home Feed Screen
    - (read/GET) read the list of the ingredients. 
- Search Screen
    - (Create/POST) Create a new like on a post
    - (Delete) Delete existing like
    - (Create/POST) Create a new comment on a post
    - (Delete) Delete existing comment
- Profile Screen
    - (Read/GET) Query logged in user object
    - (Update/PUT) Update user profile image
    - (Update/PUT) Update user's post image
- Posting Screen
    - (post/POST) posting a picture of the food.
    ```swift
        let query = PFQuery(className: "Post")
        query.findObjectsInBackground(block: { (object, error) in
            if error != nil{
                print(error)
            }else{
                if let posts = object {
                    for post in posts {
                    query.whereKey("author_id", equalTo: self.imageFile)
                    query.getObjectInBackground(withId: "post")
                        self.postPic.append(post["postPic"] as! PFFile)
                        self.food_name.append(post["food_name"] as! PFFile)
                        self.ingredients.append(post["ingredients"] as! PFFile)
                        self.instructions.append(post["instructions"] as! PFFile)
                        self.tableView.reloadData()
                }
            }
     ```
    - (post/POST) posting the name of the food.
    - (post/POST) posting the ingredients information.
    - (post/POST) posting the instructions of the food.


Base URL- www.ourFoodApp.com
| HTTP Verb | Endpoint | Description|
| -------- | -------- | -------- |
| Get     | /food     | get all food list  |
| Get     | /food/?fname=fname     | get food by names  |
| Get     | /food/?aname=aname     | get food by author  |

Milestone 1:
<img src="http://g.recordit.co/wIvdqLbaK9.gif" width=250><br>
