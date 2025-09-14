# PolyMixin

The AST manipulation library for modifying scripted modules from other V-Slice mods.

## What is PolyMixin ?
PolyMixin lets you manipulate the **AST** *(Abstract Syntax Tree)* of a scripted module at runtime without changing the original script of the mod. This allows modders to patch or extend the functionality dynamically while keeping the base script intact.

## How does it work ?
PolyMixin hooks into Polymod's scripting system by using the `PolymodScriptClass`'s `_cachedFunctionDecls`. It replaces or transforms function declarations (`FunctionDecl`) with a function declaration from another `PolymodScriptClass`.

Think of it as *"hot-swapping"* functions at the AST level.

## Limitations
Currently, there are some limitations:
- you need to get the instance of the target module yourself (if there is one).
- injections are applied later, since mixins load after the base mod. That means you should always check for PolyMixin and the original module's availability before using it.