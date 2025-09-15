# PolyMixin
*Runtime AST mixin framework for V-Slice mods*

## What is PolyMixin ?
**PolyMixin** is a **framework and API** for V-Slice mods, built on [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree) manipulation.
It is inspired by the mixin pattern used in projects like Sponge Mixin (Minecraft), and allows modders to patch or extend scripted classes without modifying their original scripts.

## Documentation
The official documentation for **PolyMixin** can be found in the [Docs](https://starexify.github.io/PolyMixin-Docs/src/).

## How does it work ?
PolyMixin hooks into Polymod's scripting system by using the `PolymodScriptClass`(`_abs`) and modifying the `_cachedFunctionDecls` and `_cachedFieldDecls`. 
It replaces or transforms the function declarations (`FunctionDecl`) using the function declaration from another class, which is also a `PolymodScriptClass`.

Think of it as *"hot-swapping"* functions at the AST level.

## Limitations
Currently, there are some limitations:
- Some transformations are applied later, because mixins may load before or after the base class (always check for PolyMixin and the original module’s availability before using it).
- lack of testing in actual mods use cases, so behavior may be unpredictable]()