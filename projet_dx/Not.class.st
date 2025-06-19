Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'in'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'operation' }
Not >> description [ 
 ^ super description ,'in: ', (self etat: in)
]

{ #category : 'public access' }
Not >> evaluate [ 
	^ (in evaluate)not
]

{ #category : 'accessing' }
Not >> in [ 
	^in
]

{ #category : 'evaluating' }
Not >> in: aComposant [
	in := aComposant
]

{ #category : 'accessing' }
Not >> initialize [
    fichier := 'not.png'.
    position := 200@400.  "Par défaut, peut être défini après"
]

{ #category : 'accessing - structure variables' }
Not >> state [
	[^ in state not] on: Error do: [ ^ false ].
]
