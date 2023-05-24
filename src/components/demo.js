import { hbs } from 'ember-cli-htmlbars';
import { setComponentTemplate } from '@ember/component';
import templateOnly from '@ember/component/template-only';

export default setComponentTemplate(hbs`Hello there`, templateOnly());
