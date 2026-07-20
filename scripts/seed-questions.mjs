// Backward-compatible entry point. Publishing is implemented in the validated,
// environment-driven seed-all-questions command.
import { main, publishQuestions } from './seed-all-questions.mjs'

export { publishQuestions }

if (process.argv[1] === new URL(import.meta.url).pathname) {
  main().catch(error => {
    console.error(error instanceof Error ? error.message : error)
    process.exitCode = 1
  })
}
