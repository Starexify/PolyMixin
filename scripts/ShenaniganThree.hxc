import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;
import funkin.util.AnsiUtil;

using funkin.util.AnsiUtil;

class ShenaniganOne extends ScriptedModule {
  /**
   * Calling static functions from `using` imports doesn't work.
   */
  override public function onCreate(event:ScriptEvent) {
    testFunc();
    testFunc2();
  }

  function testFunc() {
    trace(" TEST ".bg_purple());
    trace(AnsiUtil.bg_purple(" TEST2 "));
  }

  static function testFunc2() {
    //trace(" TEST3 ".bg_purple());
    trace(AnsiUtil.bg_purple(" TEST4 "));
  }
}