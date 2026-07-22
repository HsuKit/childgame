# Choice Answer Normalization Design

## Goal

Fix choice questions that are visually correct but judged wrong when `content.answer` reaches the client in an older or inconsistent format, such as `"3"`, `"D"`, or the option text `"比喻"`.

## Root Cause

The authored and migrated question bank stores choice answers as zero-based numeric indexes. The quiz UI also sends numeric indexes. However, the runtime path trusts database JSON without normalization. If online or historical rows contain a string answer, strict comparison marks the user's numeric choice wrong and the UI cannot highlight the correct option.

## Design

Create a single runtime normalizer for question content. For choice questions, it converts acceptable legacy formats to a zero-based numeric index:

- numeric indexes inside the option range stay unchanged
- numeric strings such as `"3"` become `3`
- letters `A` through `D` become `0` through `3`
- exact option text such as `"比喻"` becomes that option's index when it matches exactly one option

Rows that cannot be normalized are excluded from newly composed quiz pools so they do not appear in fresh sessions. The normalizer is also used by quiz rendering and mistake review so historical records loaded from the database render and judge against the same contract.

## Database

Add migration `014_normalize_choice_answers.sql` to repair existing `questions.content.answer` values in place. The migration converts the same legacy formats as the client normalizer. It marks unrepairable choice rows as `draft`, keeping them out of the approved/reviewed quiz pool until corrected manually.

Add a database check constraint so future choice rows must store a numeric answer index inside the available options range.

## Testing

Add focused tests for the normalizer:

- screenshot regression: `"比喻"` maps to index `3`, so choosing D is correct
- `"3"` and `"D"` map to `3`
- invalid choice answers are rejected
- repository pool loading excludes invalid rows
- all local authored question files still validate as numeric answer contracts

Run the relevant unit tests, the question validation script, and the production build before committing and deploying.
