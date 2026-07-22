# Child-Friendly Explanations Design

## Goal

Upgrade answer feedback and mistake-review explanations so Chinese and English questions explain the reasoning path, not only the final answer.

## Scope

- Ordinary quiz feedback cards.
- Mistake correction feedback cards.
- Chinese and English authored question explanation templates.
- Local tests for explanation formatting and generated question copy.

Out of scope:

- AI-generated live tutoring.
- Changing scoring, answer checking, session flow, or database schema.
- Rewriting every existing question by hand.

## Design

The UI will use one shared explanation panel for quiz and mistake-review pages. The panel keeps the immediate result message, then presents structured lines:

- Correct answer when needed.
- Why this answer fits.
- Tip for the next similar question.

Existing plain `content.explanation` text remains supported. A small helper will turn a question and result state into child-friendly explanation sections. When the stored explanation is already specific, it is shown as the reasoning text. When it is missing or too generic, the helper adds a type-aware fallback.

Question-authoring scripts will stop using the shortest generic templates for Chinese and English fill or choice questions. They will generate explanations that point children to the clue in the sentence, the task wording, or the polite/grammar pattern being tested.

## Content Principles

- Use warm, concrete language.
- Explain how to find the clue.
- Keep each line short enough for mobile.
- For wrong answers, avoid shame language; use "再看一步" framing.
- For English, mention the pattern in English but explain in simple Chinese when helpful.

## Testing

- Unit test the explanation helper for Chinese fill, English polite request, and missing explanation cases.
- Unit test authored Chinese and English samples so generated explanation text includes reasoning and a tip, not just a bare answer.
