Class {
	#name : 'CircuitTest',
	#superclass : 'TestCase',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'test' }
CircuitTest >> testcircuit_interupteur [
| circuit inter1 inter2 or not and vanne |
circuit := Circuit new.
inter1 := Interrupteur new.
inter2 := Interrupteur new.
or :=Or new.
not := Not new.
and := And new.
vanne := Vanne new.
circuit ajtcompo: { inter1. inter2. or. not. and. vanne }.

self assert: (circuit interrupteurs size = 2).
]

{ #category : 'test' }
CircuitTest >> testcircuit_vanne [
| circuit inter1 inter2 or not and vanne |
circuit := Circuit new.
inter1 := Interrupteur new.
inter2 := Interrupteur new.
or :=Or new.
not := Not new.
and := And new.
vanne := Vanne new.
circuit ajtcompo: { inter1. inter2. or. not. and. vanne }.

self assert: (circuit vannes size = 1).
]
