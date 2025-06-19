Class {
	#name : 'SignalBas',
	#superclass : 'SignalLogique',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'controlling' }
SignalBas >> and: autre [
 ^ self
]

{ #category : 'logical operations' }
SignalBas >> not [ 
^ SignalHaut new 
]

{ #category : 'controlling' }
SignalBas >> or: autre [
^ autre
]

{ #category : 'haut/bas' }
SignalBas >> signalbas [
	^ false
]

{ #category : 'evaluating' }
SignalBas >> value [ 
^false
]
