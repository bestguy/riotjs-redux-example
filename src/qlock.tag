import { createStore } from 'redux'
import qlock from './qlock_reducer.js';

<qlock>

<pre>
<span class="on">IT</span>L<span class="on">IS</span>BFAMPM
<span class={ on: time.quarter }>A</span>C<span class={ on: time.quarter }>QUARTER</span>DC
<span class={ on: time.twentyMinutes }>TWENTY</span><span class={ on: time.fiveMinutes }>FIVE</span>X
<span class={ on: time.half }>HALF</span>B<span class={ on: time.tenMinutes }>TEN</span>F<span class={ on: time.to }>TO</span>
<span class={ on: time.past }>PAST</span>ERU<span class={ on: time.h == 9 }>NINE</span>
<span class={ on: time.h == 1 }>ONE</span><span class={ on: time.h == 6 }>SIX</span><span class={ on: time.h == 3 }>THREE</span>
<span class={ on: time.h == 4 }>FOUR</span><span class={ on: time.h == 5 }>FIVE</span><span class={ on: time.h == 2 }>TWO</span>
<span class={ on: time.h == 8 }>EIGHT</span><span class={ on: time.h == 11 }>ELEVEN</span>
<span class={ on: time.h == 7 }>SEVEN</span><span class={ on: time.h == 0 }>TWELVE</span>
<span class={ on: time.h == 10 }>TEN</span>SE<span class={ on: time.oclock }>OCLOCK</span>
<span>{time.oneMinute ? '&bull;' : ' '}</span>  <span>{time.twoMinutes ? '&bull;' : ' '}</span>  <span>{time.threeMinutes ? '&bull;' : ' '}</span>  <span>{time.fourMinutes ? '&bull;' : ' '}</span>
</pre>

<style>
  pre {
    display: inline-block;
    letter-spacing: 0.46em;
  }
  pre span {
    transition: font-weight 1s ease;
  }
  pre .on {
    font-weight: bold;
  }
</style>

<script>
  const store = createStore(qlock);

  const render = () => {
    this.time = store.getState();
    this.update();
  }
  store.subscribe(render);

  setInterval(() => {
    store.dispatch({ type: 'TICK', now: new Date() });
  }, 3000);
</script>

</qlock>
