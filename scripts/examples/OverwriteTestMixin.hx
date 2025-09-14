import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class OverwriteTestMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        trace("Called from OverwriteTestMixin");
        if (injected) OverwriteTest.instance.test();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (!injected) {
            var success = PolyMixin.overwrite(OverwriteTest.instance, "test", this, "testMixin");
            if (success) trace("Injection succeeded!");
            injected = success;
        }
    }

    function testMixin() {
        trace("Injected into test()");
    }
}