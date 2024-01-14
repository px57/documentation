
L'objectif de la classe target et d'indiquer un espace de temps bien precis, qu'il s'agisse d'une periode de la journee, d'une journee, d'une semaine, d'un mois, d'une annee ou d'une periode arbitraire.

Ont 

## Exemple

```typescript

import { Target } from 'modules/time_manager/classes/target';
const target = new Target({
  target_time: new Date('2020-01-01T23:59:59.999Z'),
  time_below: {value: 0, unit: 'ms'},
  time_above: {value: 0, unit: 'ms'},
});

```