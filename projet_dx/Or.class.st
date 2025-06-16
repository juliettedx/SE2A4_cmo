Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'accessing - structure variables' }
Or >> state [
   ^ (in1 isNil or: [in2 isNil]) 
      ifTrue: [false] 
      ifFalse: [in1 state or: in2 state]
]
