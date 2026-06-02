#!/usr/bin/env node
// Script to generate .quartz/plugins/index.ts by resolving plugins from config
import { handlePluginResolve } from "./quartz/cli/plugin-git-handlers.js"

console.log("Generating .quartz/plugins/index.ts...")
await handlePluginResolve({ dryRun: false })
console.log("Done!")
