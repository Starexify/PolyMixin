import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class InjectFuncTestMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        trace("Called from InjectFuncTestMixin");
        if (injected) InjectFuncTest.instance.newFunc();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (!injected) {
            var success = PolyMixin.injectFunction(InjectFuncTest.instance, this, "newFunc");
            if (success) trace("Injection succeeded!");
            injected = success;
        }
    }

    function newFunc() {
        trace("New func called from InjectFuncTest !");
    }
}