## Summary ##
Much free, very wow is a web app that allows users to login and submit free activities in NYC. They can also choose to view all the activities, view only one category of activities, and manage their own activities.

As we learn more, I'd like to implement some kind of voting system in the activity rollups so that users can recommend one activity over the other

## Notes ##
* Do I make one table for each activity type or do I consolidate. Is it more beneficial to consolidate or just have a type property for activities then sort by that if I want to show a rollup of only one kind of activity?
  * Types of Activities: Music, Art, Food & Drink, Comedy, Museums, Dance, Sports, Outdoors

* Do I let users edit other users submissions?

* When is it appropriate to make a model vs including that as a column in another model? As an example, activities in this app have categories as a column. Should these categories be their own model instead? What qualifies something as "model-worthy" or not?
  * A model can have attributes and methods
  * A column has only a value
