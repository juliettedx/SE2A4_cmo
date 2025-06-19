Class {
	#name : 'SignalHaut',
	#superclass : 'SignalLogique',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'controlling' }
SignalHaut >> and: autre [
	^ autre
]

{ #category : 'logical operations' }
SignalHaut >> not [
	^ SignalBas new.
]

{ #category : 'controlling' }
SignalHaut >> or: autre [
	^ self
]

{ #category : 'etat' }
SignalHaut >> signalhaut [
	^ true
]

{ #category : 'evaluating' }
SignalHaut >> value [ 
^ true
]
