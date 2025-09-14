import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class InjectionTestMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        trace("Called from InjectionTestMixin");
        if (injected) InjectionTest.instance.test();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (!injected) {
            var success = PolyMixin.injectByName(InjectionTest.instance, "test", this, "testMixin", At.INVOKE, "doSmth", 1, Shift.AFTER);
            if (success) trace("Injection succeeded!");
            injected = success;
        }
    }

    function testMixin() {
        trace("Injected into test()");
    }
}