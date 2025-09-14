import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class ModifyReturnTestMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        trace("Called from ModifyReturnTestMixin");
        if (injected) ModifyReturnTest.instance.test();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (!injected) {
            var success = PolyMixin.modifyByName(ModifyReturnTest.instance, "test", this, "testMixin", "testMixinCall");
            if (success) trace("Injection succeeded!");
            injected = success;
        }
    }

    function testMixin(original:Int) {
        return trace(original + 10);
    }

    function testMixinCall(original:Int) {
        testMixin(original);
    }
}