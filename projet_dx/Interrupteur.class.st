Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'state'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'as yet unclassified' }
Interrupteur >> off [ 
	state :=false
]

{ #category : 'on/off' }
Interrupteur >> on [ 
	state :=true
]

{ #category : 'accessing' }
Interrupteur >> state [ 
	^state
]
