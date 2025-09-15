import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class ModifyExprTestMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        trace("Called from ModifyExprTestMixin");
        if (injected) ModifyExprTest.instance.test();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (injected) return;
        if (injected) trace("Injection succeeded!");
        injected = MixinAnnotationProcessor.applyMixins(this, ModifyExprTest.instance);
    }

    @:ModifyExpression(method = "test", call = "testMixinCall", target = "true", ordinal = 1)
    function testMixin(original:Bool) {
        return original && false;
    }

    function testMixinCall(original:Bool) {
        testMixin(original);
    }
}