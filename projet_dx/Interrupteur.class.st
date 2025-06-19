Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'state',
		'etat'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'accessing' }
Interrupteur >> etat: aBoolean [
	etat:=aBoolean
]

{ #category : 'action' }
Interrupteur >> evaluate [ 
	^ state 
]

{ #category : 'accessing' }
Interrupteur >> initialize [

   position ifNil: [ position := 50@100 ].
]

{ #category : 'on/off' }
Interrupteur >> off [ 
	state := SignalBas new.
	fichier := 'interupteur_ouv.png'.
	position:= 50@200.
]

{ #category : 'on/off' }
Interrupteur >> on [ 
	state := SignalHaut new.
	fichier := 'interupteur_ferm.png'.
	position:= 50@175.
]

{ #category : 'accessing' }
Interrupteur >> position [
   ^ position
]

{ #category : 'accessing' }
Interrupteur >> position: unePosition [
   position := unePosition
]

{ #category : 'accessing' }
Interrupteur >> state [ 
	^state
]
