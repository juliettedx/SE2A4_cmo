Class {
	#name : 'Porte2Entrees',
	#superclass : 'Porte',
	#instVars : [
		'in1',
		'in2'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'operation' }
Porte2Entrees >> description [ 
 ^ super description ,'in1: ( ', (self etat: in1),' ) ','in2: ', (self etat: in2)
]

{ #category : 'accessing' }
Porte2Entrees >> in1 [
	^ in1
]

{ #category : 'accessing' }
Porte2Entrees >> in1: aComposant [
	in1 := aComposant
]

{ #category : 'accessing' }
Porte2Entrees >> in2 [
	^ in2
]

{ #category : 'accessing' }
Porte2Entrees >> in2: aComposant [
	in2 := aComposant
]
