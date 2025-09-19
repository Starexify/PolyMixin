<p align="center">
  <img src="https://github.com/Starexify/Starexify/blob/main/resources/FNF/PolyMixin/polymixin_logo.png?raw=true" alt="PolyMixin"/>
</p>

<p align="center">
  <em>Runtime AST Mixin Framework for V-Slice Mods</em>
</p>
&nbsp;
<p align="center">
  <a href="https://starexify.github.io/PolyMixin-Docs/src/">
    <img alt="Official Docs" src="https://img.shields.io/badge/official%20documentation-blue?style=for-the-badge">
  </a>
</p>


## What is PolyMixin ?
**PolyMixin** is a **framework and API** for V-Slice mods, built on [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree) manipulation.
It is inspired by the mixin pattern used in projects like SpongePowered Mixin (Minecraft), and allows modders to patch or extend scripted classes without modifying their original scripts.

## How does it work ?
PolyMixin hooks into Polymod's scripting system by using the `PolymodScriptClass`(`_abs`) and modifying the `_cachedFunctionDecls` and `_cachedFieldDecls`. 
It replaces or transforms the function declarations (`FunctionDecl`) using the function declaration from another class, which is also a `PolymodScriptClass`.

Think of it as *"hot-swapping"* functions at the AST level.