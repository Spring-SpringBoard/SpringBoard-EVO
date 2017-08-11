return {
  name = 'SpringBoard EVO',
  shortName = 'SB_EVO',
  game = 'SpringBoard EVO',
  shortGame = 'SB_EVO',
  description = 'SpringBoard for Evolution RTS',
  version = '$VERSION',
  mutator = 'Official',
  modtype = 1,
  depend = {
     -- Order matters. Putting game second ensures its widget/gadget handler is loaded

	'rapid://sbc:test',
--	'SpringBoard Core $VERSION',

	'rapid://evo:stable',
  },
}
