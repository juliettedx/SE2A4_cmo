Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'accessing - structure variables' }
And >> state [
   ^ (in1 isNil or: [in2 isNil]) 
      ifTrue: [false] 
      ifFalse: [in1 state and: in2 state]
]
