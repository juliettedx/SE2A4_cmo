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

{ #category : 'accessing' }
Not >> in [ 
	^in
]

{ #category : 'evaluating' }
Not >> in: aComposant [
	in := aComposant
]

{ #category : 'accessing - structure variables' }
Not >> state [
	^ (in isNil ifTrue: [false] ifFalse: [in state not])
]
