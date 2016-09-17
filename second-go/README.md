# README

App is a generic Object in cable.js
	Attributes:
		.cable is an Actioncable Consumer object

App.cable has a collection of subscriptions
	- oddly, this is stored in .subscriptions.subscriptions

App.room is the first subscription in the collection.
	AKA
App.cable.subscriptions.subscriptions[0] == App.room





Subscriptions, such as App.room, have various methods (???). 