import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { hbs } from 'ember-cli-htmlbars';
import { setComponentTemplate } from '@ember/component';

export default class Wrapper extends Component {
  static {
    setComponentTemplate(hbs`
      <button {{on 'click' this.increment}}>
        Clicked {{this.foo}} times
      </button>
    `, this);
  }

  @tracked foo = 0;

  increment = () => this.foo++;
}

